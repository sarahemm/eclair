//
//  EclairMachine.swift
//  ECLairSimulator
//
//  Created by sen on 2017-06-03.
//  Copyright © 2017 Hackstrich. All rights reserved.
//

import Foundation
import Cocoa

extension Int {
    func isBitSet(_ bitNbr: Int) -> Bool {
        return(1 << bitNbr & self != 0)
    }
}

struct MachineStats {
    var clockCycles: Int
    var memReads: Int
    var memWrites: Int
        
    init() {
        clockCycles = 0
        memReads = 0
        memWrites = 0
    }
    
    mutating func reset() {
        clockCycles = 0
        memReads = 0
        memWrites = 0
    }
}

struct MachineStatus {
    var z: Bool
    var co: Bool
    
    init() {
        z = false
        co = false
    }
    
    mutating func reset() {
        z = false
        co = false
    }
}

struct MachineFlags {
    var pe: Bool
    var m: Bool
    var ie: Bool
    
    init() {
        pe = false
        m = false
        ie = false
    }
    
    mutating func reset() {
        pe = false
        m = false
        ie = false
    }
}

class Machine {
    var controlStore: [ControlWord]
    var addressSpace: AddressSpace
    var pageTable: Memory
    
    var cs_addr: Int
    var bus_data: Int
    var pc: Int
    var ir: Int
    var mar: Int
    var mdr: Int
    var a: Int
    var b: Int
    var c: Int
    var d: Int
    var x: Int
    var y: Int
    var sp: Int
    var ptb: Int
    var status: MachineStatus
    var flags: MachineFlags
    
    var stats: MachineStats
    
    var prev_pc: Int    // the value of pc before the most recent change of that register
    
    var cs_data: Int {
        return controlStore[Int(cs_addr)].raw
    }
    
    var z: Int {
        switch (cs_data >> 36 & 0x0F) {
            case 0:
                return x
            case 6:
                return x + y
            case 9:
                return x - y
            case 15:
                return x - 1
            default:
                return 0xFF
        }
    }

    var pagetable_addr: Int {
        return ptb | mar.bitField(startBit: 10, length: 6) << 6
    }
    
    var bus_addr: Int {
        if(flags.pe) {
            // paging is enabled, run the address through the paging mechanism
            return mar.bitField(startBit: 0, length: 10) | pageTable[pagetable_addr] << 10
        } else {
            // paging is disabled, we just access the first 64k of address space
            return mar
        }
    }

    var is_halted: Bool {
        let csNext = (cs_data >> 25 & 0xFF)
        if(csNext == cs_addr) {
            return true
        }
        return false
    }
    
    // true if the microcode instruction we're sitting at is fetch2 (the one that jumps to ir)
    var at_fetch: Bool {
        return controlStore[cs_addr].nextCSAddr == 0
    }
    
    init() {
        controlStore = []
        addressSpace = AddressSpace(
            romStart: 0x000000, romSize: 0x0FFFFF,
            ramStart: 0x100000, ramSize: 0xDFFFFF
        )

        pageTable = Memory(size: 1<<12, width: 16)

        bus_data = 0x00
        cs_addr = 0x0000
        pc      = 0x0000
        ir      = 0x00
        mar     = 0x0000
        mdr     = 0x0000
        a       = 0x0000
        b       = 0x0000
        c       = 0x0000
        d       = 0x0000
        sp      = 0x0000
        x       = 0x0000
        y       = 0x0000
        ptb     = 0x00
        
        prev_pc = 0x0000
        
        stats = MachineStats.init()
        status = MachineStatus.init()
        flags = MachineFlags.init()
    }
    
    func reset() {
        bus_data = 0x00
        cs_addr = 0x0000
        pc      = 0x0000
        ir      = 0x00
        mar     = 0x0000
        mdr     = 0x0000
        a       = 0x0000
        b       = 0x0000
        c       = 0x0000
        d       = 0x0000
        sp      = 0x0000
        x       = 0x0000
        y       = 0x0000
        ptb     = 0x00
        status.reset()
        flags.reset()
    }
    
    func loadROM(romContents: Array<Int>) {
        addressSpace.loadROM(romContents: romContents)
    }
    
    func loadControlStore(csContents: Array<Int>) {
        csContents.forEach { csWord in
            controlStore.append(ControlWord(csWord))
        }
    }
    
    func singleStep() throws {
        try executeMicrocodeStep(controlStore[Int(cs_addr)])
    }
    
    func disassembleMicrocode(_ csWord: Int) -> String {
        var buf: String
        buf = ""
        
        let controlWord = ControlWord(csWord)

        // TODO: replace all of this with dynamic code reading the microcode input file instead of hardcoding it all
        if(controlWord.writePTE) {
            buf += "WR_PTE "
        }
        if(controlWord.loadMDR) {
            // Load MDR
            if(csWord.isBitSet(24)) {
                if(csWord.isBitSet(34)) {
                    // Load MDR High Byte from Data Bus
                    buf += "LD_MDR(data_high) "
                } else {
                    // Load MDR High Byte from Z
                    buf += "LD_MDR(z_high) "
                }
            } else {
                if(csWord.isBitSet(34)) {
                    // Load MDR Low Byte from Data Bus
                    buf += "LD_MDR(data_low) "
                } else {
                    // Load MDR Low Byte from Z
                    buf += "LD_MDR(z_low) "
                }
            }
        }
        if(controlWord.loadMAR) {
            buf += "LD_MAR("
            if(controlWord.loadMARFrom == .PC) {
                buf += "pc"
            } else {
                buf += "z"
            }
            buf += ") "
        }
        if(controlWord.loadIR) {
            buf += "LD_IR "
        }
        if(controlWord.incPC) {
            buf += "INC_PC "
        }
        if(controlWord.loadPC) {
            buf += "LD_PC "
        }
        
        if(controlWord.loadReg != .None) {
            // Load register from Z
            buf += "LD_REG("
            switch controlWord.loadReg {
                case .A:
                    buf += "a) "
                case .B:
                    buf += "b) "
                case .C:
                    buf += "c) "
                case .D:
                    buf += "d) "
                case .SP:
                    buf += "sp) "
                case .FromIR:
                    buf += "ir) "
                default:
                    x = z
                    // TODO: should throw
            }
        }
        
        if(controlWord.loadX) {
            buf += "LD_X("
            let xySrc = (csWord >> 40 & 0x07)
            switch xySrc {
                case 0:
                    // immediate
                    buf += "imm"
                case 1:
                    buf += "a"
                case 2:
                    buf += "b"
                case 3:
                    buf += "c"
                case 4:
                    buf += "d"
                case 5:
                    buf += "sp"
                case 6:
                    buf += "mar"
                case 7:
                    buf += "mdr"
            default:
                    buf += "?"
            }
            buf += ") "
        }
        
        if(controlWord.loadY) {
            buf += "LD_Y("
            let xySrc = (csWord >> 40 & 0x07)
            switch xySrc {
                case 0:
                    // immediate
                    buf += "imm="
                    buf += String(format: "%02hhX", ir)
                case 1:
                    buf += "a"
                case 2:
                    buf += "b"
                case 3:
                    buf += "c"
                case 4:
                    buf += "d"
                case 5:
                    buf += "sp"
                case 6:
                    buf += "mar"
                case 7:
                    buf += "mdr"
                default:
                    buf += "?"
            }
            buf += ") "
        }
        if(controlWord.loadPTB) {
            buf += "LD_PTB "
        }
        if(controlWord.loadStatus) {
            buf += "LD_STATUS "
        }
        if(controlWord.clearInterruptFlags) {
            buf += "CLR_INT "
        }
        if(controlWord.memWrite) {
            buf += "MEM_W "
        }
        if(controlWord.loadFlagPE) {
            buf += "LD_FLG_PE "
        }
        if(controlWord.loadFlagM) {
            buf += "LD_FLG_M "
        }
        if(controlWord.loadFlagIE) {
            buf += "LD_FLG_IE "
        }
        // TBD: these
        if(controlWord.memRead) {
            buf += "MEM_R "
        }
        
        // figure out where we go next
        if(controlWord.controlWord == 0x0000000000000000) {
            // don't disassemble as "next(ir)" if the entire word is zeroes, assume it's really blank
            return buf;
        }
        if(controlWord.nextCSAddr == 0) {
            buf += "NEXT(ir)"
        } else {
            buf += "NEXT("
            buf += String(format: "%02hhX", controlWord.nextCSAddr)
            buf += ")"
        }
        
        return buf;
    }
    
    func executeMicrocodeStep(_ controlWord: ControlWord) throws {
        stats.clockCycles += 1
        
        if(controlWord.incPC) {
            // Increment PC
            prev_pc = pc
            pc += 1
        }
        if(controlWord.loadMAR) {
            // Load MAR
            if(controlWord.loadMARFrom == .PC) {
                mar = pc
            } else {
                mar = z
            }
        }
        if(controlWord.memRead) {
            // Memory Read
            try bus_data = addressSpace.read(bus_addr)
            stats.memReads += 1
        }
        if(controlWord.writePTE) {
            // Write PTE
            pageTable[pagetable_addr] = z
        }
        if(controlWord.loadMDR) {
            // Load MDR
            if(controlWord.mdrByteSelect == .High) {
                if(controlWord.loadMDRFrom == .DataBus) {
                    // Load MDR High Byte from Data Bus
                    mdr &= 0xFF
                    mdr |= bus_data << 8
                } else {
                    // Load MDR High Byte from Z
                    mdr &= 0xFF
                    mdr |= (z | 0xFF00)
                }
            } else {
                if(controlWord.loadMDRFrom == .DataBus) {
                    // Load MDR Low Byte from Data Bus
                    mdr &= 0xFF00
                    mdr |= bus_data
                } else {
                    // Load MDR Low Byte from Z
                    mdr &= 0xFF00
                    mdr |= (z | 0xFF)
                }
            }
        }
        if(controlWord.loadIR) {
            // Load IR
            ir = bus_data
        }
        if(controlWord.loadPC) {
            // Load PC
            prev_pc = pc
            pc = z
        }
        if(controlWord.loadX) {
            // Load X
            switch controlWord.xySource {
                case .Immediate:
                    x = controlWord.immediateValue
                case .A:
                    x = a
                case .B:
                    x = b
                case .C:
                    x = c
                case .D:
                    x = d
                case .SP:
                    x = sp
                case .MAR:
                    x = mar
                case .MDR:
                    x = mdr
                case .IntVect:
                    // TODO: Implement interrupts
                    x = 0xC0FFEE
            }
        }
        if(controlWord.loadY) {
            // Load Y
            switch controlWord.xySource {
                case .Immediate:
                    y = controlWord.immediateValue
                case .A:
                    y = a
                case .B:
                    y = b
                case .C:
                    y = c
                case .D:
                    y = d
                case .SP:
                    y = sp
                case .MAR:
                    y = mar
                case .MDR:
                    y = mdr
                case .IntVect:
                    // TODO: Implement interrupts
                    y = 0xC0FFEE

            }
        }
        if(controlWord.loadReg != .None) {
            // Load register from Z
            switch controlWord.loadReg(ir) {
                case .A:
                    a = z
                case .B:
                    b = z
                case .C:
                    c = z
                case .D:
                    d = z
                case .SP:
                    sp = z
                default:
                    x = z
                    // TODO: should throw
            }
        }
        if(controlWord.loadPTB) {
            // Load PTB
            ptb = z
        }
        if(controlWord.loadStatus) {
            // Load Status from ALU
            status.z = (z == 0)
            // TODO: carry logic likely needs work
            status.co = (z > 2^16)
        }
        if(controlWord.clearInterruptFlags) {
            // Clear Interrupt Flags from Z
        }
        if(controlWord.memWrite) {
            // Memory Write
            stats.memWrites += 1
        }
        if(controlWord.loadFlagPE) {
            // Load PE Flag
            flags.pe = z.isBitSet(0)
        }
        if(controlWord.loadFlagM) {
            // Load M Flag
            flags.m = z.isBitSet(1)
        }
        if(controlWord.loadFlagIE) {
            // Load IE Flag
            flags.pe = z.isBitSet(2)
        }
        // TBD: these

        // figure out where we go next
        if(controlWord.nextCSAddr == 0) {
            print("Jumping CS to ir=" + String(ir))
            cs_addr = ir
        } else {
            print("Jumping CS to next=" + String(controlWord.nextCSAddr))
            cs_addr = controlWord.nextCSAddr
        }
    }
    
}
