#!/usr/bin/ruby

require 'graphviz'
require 'digest'
require 'pp'

class String
  def strip_chars(chars)
    chars = Regexp.escape(chars)
    self.gsub(/\A[#{chars}]+|[#{chars}]+\z/, "")
  end
end

class Hash
  def value_sort
    sorted_array = self.sort_by {|k, v| v}
    sorted_array.reverse!
  end
end

class VerilogModule
  attr_accessor :name, :ports

  def initialize(name: nil)
    @name = name
    @ports = {}
  end

  class Port
    attr_accessor :name, :direction

    def initialize(name: nil, direction: nil)
      @name = name
      @direction = direction
    end
  end
end

class Instance
  attr_reader :name, :of, :params, :ports
  attr_accessor :subsystem

  def initialize(of: nil, cfg: nil, name: nil, subsystem: nil)
    @of = of
    @subsystem = subsystem

    phase = :start
    @name = name

    this_param = nil
    @params = {}
    
    this_port = nil
    @ports = {}

    # implicit instance, we just get a name and what we're an instance of
    return if !cfg
    
    cfg.split(/[\(\)#]/).each do |part|
      next if part.strip == '' or part.strip == '~'
      case(phase)
        when :start
          part.strip!
          if(part.include?(' ')) then
            # no parameters, the instance name is the second part of what we have
            (module_name, @name) = part.split(/\s+/)
            phase = :port_next
          else
            # there's parameters still to come before the instance name
            module_name = part
            phase = :param_next
          end
        when :param_next
          if(/\s+[a-z]/.match(part)) then
            # we ran into the instance name
            @name = part.strip
            phase = :port_next
            next
          end
          this_param = part.strip
          phase = :param_value_next
        when :param_value_next
          @params[this_param] = part.strip
          phase = :param_next
        when :port_next
          this_port = part.strip_chars(" ,.")
          this_port = this_port.split("[")[0]
          phase = :port_assignment_next
        when :port_assignment_next
          @ports[this_port] = part.strip
          #puts "PO: #{@ports[this_port]} TP: #{this_port}"
          phase = :port_next
        else
          puts "phase '#{phase.to_s}': #{part}"
      end
    end

    #puts "instance '#{instance_name}' is of module '#{module_name}'"
    #puts " params: #{params.map { |k, v| "#{k}=#{v}" }.join(", ")}" if params.keys.length > 0
    #puts " ports:  #{ports.map { |k, v| "#{k}=#{v}" }.join(", ")}" if ports
  end
end

class Wire
  attr_accessor :start_bit, :end_bit, :ins, :outs

  def initialize(start_bit: nil, end_bit: nil)
    @start_bit = start_bit
    @end_bit = end_bit
    @ins = []
    @outs = []
  end
end

def logic_split(logic)
  logic_elements = []
  logic.split(/[^a-zA-Z_0-9':\[\]]/).each do |logic_element|
    next if logic_element.strip == ''
    this_in = logic_element.split('[')[0]
    #next if /\d+'[bhd][0-9a-f]*/.match(logic_element) or this_in == ':' or /^\d+$/.match(this_in)
    next if this_in == ':'
    logic_elements.push this_in
  end

  logic_elements
end

def text_to_colour(module_name)
  # turn a string into a random colour that will always be the same for that string
  hue = Digest::MD5.hexdigest(module_name).to_i(16) % 255.0 / 255.0
  "#{hue} 1 1"
end

def most_common_subsystem(inouts)
  subsystems = {}
  inouts.each do |inout|
    name = inout[:instance].subsystem
    subsystems[name] = 0 if !subsystems[name]
    subsystems[name] += 1
  end
  sorted = subsystems.value_sort

  # prefer colocating in a cluster rather than the root graph, if possible
  return sorted[1][0] if sorted[1] and sorted[0][0] == nil
  subsystems.value_sort[0][0]
end

def subsystem_to_subgraph(graph:, subgraphs:, subsystem:)
  return graph if subsystem == nil
  cluster_name = "cluster-#{subsystem}"
  subgraphs[cluster_name] = graph.subgraph(cluster_name, label: subsystem, bgcolor: :linen, fontsize: 100) if !subgraphs[cluster_name]
  subgraphs[cluster_name]
end

modules = {}
Dir.glob("*.v").each do |filename|
  next if filename == 'eclair.v' # we do this one last
  name = nil
  File.read(filename).each_line do |line|
    if(matches = /^\s*module\s+([^\(]+)/.match(line)) then
      name = matches[1]
      modules[name] = VerilogModule.new(name: name)
    elsif(matches = /\s*(output|input)\s+(?:reg\s+)?(?:\[[^\]]+\]\s+)?([^;]+)/.match(line)) then
      dir = matches[1] == 'output' ? :out : :in
      port_name = matches[2]
      modules[name].ports[port_name] = VerilogModule::Port.new(name: port_name, direction: dir)
    end
  end
end

wires = {}
instances = []
wire_conns = {}
current_subsystem = nil
File.read('eclair.v').each_line do |line|
  if(matches = /^\s*\/\/\s*Subsystem:\s*(.*)/.match(line)) then
    current_subsystem = matches[1]
  elsif(matches = /^\s*(?:wire|reg)\s+(\[\d+:\d+\])?\s*([^;]+)/.match(line)) then
    # wire/register
    bits = matches[1]
    name = matches[2]
    if(bits) then
      matches = /(\d+):(\d+)/.match(bits)
      wires[name] = Wire.new(start_bit: matches[1], end_bit: matches[2])
    else
      wires[name] = Wire.new()
    end
  elsif(matches = /^\s*assign\s+(?:#\d+\s+)?([^\[=]+)(?:\[[0-9:]+\])?\s*=\s*([^;]+)/.match(line)) then
    # assignment, which we treat as an implicit module
    out = matches[1].strip # where the output of this 'module' goes
    logic = matches[2]     # the logic that makes up the 'module'

    this_module = VerilogModule.new(name: "aimplicit-#{out}")
    instance = nil
    # see if there's an existing instance for this which we can use
    # this can happen if there are multiple assigns to different bits of the same wire
    instances.each do |test_instance|
      if(test_instance.name == "aimplicit-#{out}") then
        instance = test_instance
        break;
      end
    end
    if(!instance) then
      # no existing instance, create a new one
      instance = Instance.new(name: "aimplicit-#{out}", of: this_module) 
      instances.push instance
    end
    wires[out].ins.push({instance: instance})
    pp logic_split(logic).uniq if out == 'clk_half'
    logic_split(logic).uniq.each do |element|
      if((/\d+'[bhd][0-9a-fA-F]*/.match(element) or /^\d+$/.match(element)) and !wires[element]) then
        puts "Creating new wire for constant '#{element}'"
        wires[element] = Wire.new
      elsif(!wires[element]) then
        puts "Can't find wire for '#{element}', skipping."
        next
      end
      wires[element].outs.push({instance: instance})
    end
  elsif(modules.keys.include?(line.strip.split(/\s+/)[0])) then
    # instantiation of a module
    module_name = line.strip.split(/\s+/)[0]
    this_instance = Instance.new(of: modules[module_name], subsystem: current_subsystem, cfg: line)
    this_instance.ports.each do |port_name, full_wire|
      if(!this_instance.of.ports[port_name])
        puts "Skipping for #{port_name}"
        next
      end
      dir = this_instance.of.ports[port_name].direction
      logic_elements = logic_split(full_wire)
      if(logic_elements.length > 1) then
        # instantiate an implicit logic module to combine the multiple elements
        implicit_module = VerilogModule.new(name: "pimplicit-#{this_instance.name}-#{port_name}")
        implicit_instance = Instance.new(name: "pimplicit-#{this_instance.name}-#{port_name}", of: implicit_module, subsystem: current_subsystem)
        instances.push implicit_instance
        # connect one wire from the new implicit instance to the port
        wires[implicit_instance.name] = Wire.new()
        if(dir == :out) then
          STDERR.puts "Combinatorial logic on output ports not supported: #{implicit_instance.name}."
        else
          # wire goes from implicit instance to port
          wires[implicit_instance.name].ins.push({instance: implicit_instance})
          wires[implicit_instance.name].outs.push({instance: this_instance, port: this_instance.of.ports[port_name]})
          # then wires from all logic elements to the implicit instance
          logic_elements.each do |logic_element|
            if(!wires[logic_element] and /\d+'[bhd][0-9a-fA-F]*/.match(logic_element) or /^\d+$/.match(logic_element)) then
              puts "Creating new wire for port-logic constant '#{logic_element}'"
              wires[logic_element] = Wire.new
            end
            wires[logic_element].outs.push({instance: implicit_instance})
          end
        end
      else
        logic_element = logic_elements[0]
        if(!wires[logic_element]) then
          puts "Unable to find wire named '#{logic_element}' (#{this_instance.name}), creating."
          wires[logic_element] = Wire.new()
        end
        this_wire = wires[logic_element]
        this_wiredir = (dir == :out ? this_wire.ins : this_wire.outs)
        this_wiredir.push({instance: this_instance, port: this_instance.of.ports[port_name]})
      end
    end
    instances.push this_instance
  end
end

graph = GraphViz.new(:G, type: 'strict digraph', splines: :line)
subgraphs = {}
instances.each do |instance|
  if(instance.name.include? 'implicit-') then
    common_subsystems = {}
    wires.each do |wire_name, wire|
      # ignore constants as they connect to many modules and we split them up later
      next if (/\d+'[bhd][0-9a-fA-F]*/.match(wire_name) or /^\d+$/.match(wire_name))
      connected_to_instance = false
      (wire.ins + wire.outs).flatten.each do |inout|
        if(inout[:instance] == instance) then
          # this wire connects to this instance
          connected_to_instance = true
        end
      end
      if(connected_to_instance) then
        (wire.ins + wire.outs).flatten.each do |inout|
          next if inout[:instance] == instance
          name = inout[:instance].subsystem
          common_subsystems[name] = 0 if !common_subsystems[name]
          common_subsystems[name] += 1
        end
      end
    end
    
    sorted_comsubs = common_subsystems.value_sort
    colocate_subsystem = sorted_comsubs[0][0]
    # prefer colocating the implicit instance in a cluster rather than the root graph, if possible
    colocate_subsystem = sorted_comsubs[1][0] if sorted_comsubs[1] and sorted_comsubs[0][0] == nil
    # keep track of where we place this instance so other placements can use that info
    instance.subsystem = colocate_subsystem
    subgraph = subsystem_to_subgraph(graph: graph, subgraphs: subgraphs, subsystem: colocate_subsystem)
    subgraph.add_nodes(instance.name, label: '', shape: :circle, style: :filled, fillcolor: :black)
  else
    in_ports = []
    out_ports = []
    instance.of.ports.each do |port_name, port|
      in_ports.push port_name if port.direction == :in
      out_ports.push port_name if port.direction == :out
    end
    subgraph = subsystem_to_subgraph(graph: graph, subgraphs: subgraphs, subsystem: instance.subsystem)
    highest_ports = [in_ports.length, out_ports.length].sort.reverse[0]
    
    in_port_label = ""
    in_ports.each do |port|
      colspan = (highest_ports / in_ports.length).floor
      in_port_label += "<td colspan='#{colspan}' port='#{port}'>#{port}</td>"
    end
    out_port_label = ""
    out_ports.each do |port|
      colspan = (highest_ports / out_ports.length).floor
      out_port_label += "<td colspan='#{colspan}' port='#{port}'>#{port}</td>"
    end

    record_label =  "<table cellspacing='0' cellpadding='10'>"
    record_label += "<tr>#{in_port_label}</tr>"
    record_label += "<tr><td #{"colspan='#{highest_ports}'"}>#{instance.name}<br />[#{instance.of.name}]</td></tr>"
    record_label += "<tr>#{out_port_label}</tr>"
    record_label += "</table>"
    subgraph.add_nodes(
      instance.name,
      :label => "< #{record_label} >",
      :shape => :plain,
      color: text_to_colour(instance.of.name)
    )
  end
end

# the interrupt input comes from the test bench, we'll just hardcode that in
graph.add_nodes('testbench', shape: :invhouse);
graph.add_edge('testbench', 'branch-int', label: 'int');

wires.each do |wire_name, wire|
  if(wire.ins.length == 1 and wire.outs.length == 1) then
    # simple point-to-point wire
    this_in = wire.ins[0]
    this_out = wire.outs[0]
    args = {xlabel: wire_name}
    args[:headport] = this_out[:port].name if this_out[:port]
    args[:tailport] = this_in[:port].name if this_in[:port]
    args[:color] = text_to_colour(this_in[:instance].of.name)
    graph.add_edges(
      this_in[:instance].name, this_out[:instance].name,
      args
    )
  elsif(wire.ins.length == 0 and (/\d+'[bhd][0-9a-fA-F]*/.match(wire_name) or /^\d+$/.match(wire_name))) then
    # constant assignment, not a real wire
    wire.outs.each do |output|
      constant_node = "#{wire_name}-#{output[:instance].name}"
      subgraph = subsystem_to_subgraph(graph: graph, subgraphs: subgraphs, subsystem: output[:instance].subsystem)
      subgraph.add_node(constant_node, label: wire_name, shape: :none, fontsize: 10)
      if(output[:port]) then
        graph.add_edges(constant_node, output[:instance].name, headport: output[:port].name, arrowsize: 0.7, arrowhead: :empty, :color => :darkslategray)
      else
        graph.add_edges(constant_node, output[:instance].name, arrowsize: 0.7, arrowhead: :empty, :color => :darkslategray)
      end
    end
  else
    # branching wire, add a node in the middle to connect everything to
    color = 'black'
    color = text_to_colour(wire.ins[0][:instance].of.name) if wire.ins[0]
    
    # we want to put the branching node in the cluster that has the most
    # endpoints, to reduce long edges
    colocate_subsystem = most_common_subsystem((wire.ins + wire.outs).flatten)
    subgraph = subsystem_to_subgraph(graph: graph, subgraphs: subgraphs, subsystem: colocate_subsystem)
    branchnode_name = "branch-#{wire_name}"
    subgraph.add_nodes(branchnode_name, :label => '', :shape => :point, :color => color)

    wire.ins.each do |input|
      if(input[:port]) then
        #puts "HOOKING UP OUTPUT from #{branchnode_name} to #{input[:instance].name} port #{input[:port].name}"
        graph.add_edges(input[:instance].name, branchnode_name, :tailport => input[:port].name, :xlabel => wire_name, :color => color)
      else
        #puts "HOOKING UP OUTPUT from #{branchnode_name} to #{input[:instance].name} [no port]"
        graph.add_edges(input[:instance].name, branchnode_name, :xlabel => wire_name, :color => color)
      end
    end
    wire.outs.each do |output|
      if(output[:port]) then
        #puts "HOOKING UP OUTPUT from #{branchnode_name} to #{output[:instance].name} port #{output[:port].name}"
        graph.add_edges(branchnode_name, output[:instance].name, :headport => output[:port].name, :xlabel => wire_name, :color => color)
      else
        #puts "HOOKING UP OUTPUT from #{branchnode_name} to #{output[:instance].name} [no port]"
        graph.add_edges(branchnode_name, output[:instance].name, :xlabel => wire_name, :color => color)        
      end
    end
  end
end

graph.output(:dot => "eclair-sim.dot")
graph.output(:pdf => "eclair-sim.pdf")
graph.output(:png => "eclair-sim.png")
File.write('eclair-sim.raw.dot', graph.to_s)
