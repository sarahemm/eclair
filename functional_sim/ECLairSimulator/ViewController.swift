//
//  ViewController.swift
//  ECLairSimulator
//
//  Created by sen on 2017-05-23.
//  Copyright © 2017 Hackstrich. All rights reserved.
//

import Cocoa

extension Data {
    func hexEncodedStringWithAddress(chunkSize: Int = 0x10) -> String {
        var buf = ""
        var byteNbr = 0
        forEach { byte in
            if(byteNbr % chunkSize == 0) {
                if(byteNbr > 0) {
                    buf += "\n"
                }
                buf += String(format: "%06hhX\t", byteNbr)
            }
            buf += String(format: "%02hhX ", byte)
            byteNbr += 1
        }
        return buf
    }
}

extension NSTableView {
    func centreRow(row: Int, animated: Bool) {
        self.selectRowIndexes(IndexSet.init(integer: row), byExtendingSelection: false)
        let rowRect = self.frameOfCell(atColumn: 0, row: row)
        if let scrollView = self.enclosingScrollView {
            let centredPoint = NSMakePoint(0.0, rowRect.origin.y + (rowRect.size.height / 2) - ((scrollView.frame.size.height) / 2))
            if animated {
                scrollView.contentView.animator().setBoundsOrigin(centredPoint)
            } else {
                self.scroll(centredPoint)
            }
        }
    }
}

extension String {
    func leftPadding(toLength: Int, withPad character: Character) -> String {
        let newLength = self.characters.count
        if newLength < toLength {
            return String(repeatElement(character, count: toLength - newLength)) + self
        } else {
            return self.substring(from: index(self.startIndex, offsetBy: newLength - toLength))
        }
    }

    func splitByLength(_ length: Int) -> [String] {
        var result = [String]()
        var collectedCharacters = [Character]()
        collectedCharacters.reserveCapacity(length)
        var count = 0
        
        for character in self.characters {
            collectedCharacters.append(character)
            count += 1
            if (count == length) {
                // Reached the desired length
                count = 0
                result.append(String(collectedCharacters))
                collectedCharacters.removeAll(keepingCapacity: true)
            }
        }
        
        // Append the remainder
        if !collectedCharacters.isEmpty {
            result.append(String(collectedCharacters))
        }
        
        return result
    }
}


class ViewController: NSViewController {
    @IBOutlet weak var runHaltControl: NSSegmentedControl!
    
    @IBOutlet var logDisplay: NSTextView!

    @IBOutlet var csDisasmDisplayTable: NSTableView!
    @IBOutlet var memoryDisplayTable: NSTableView!
    @IBOutlet var pageTableDisplayTable: NSTableView!
    
    @IBOutlet weak var pcDisplay: NSTextField!
    @IBOutlet weak var irDisplay: NSTextField!
    @IBOutlet weak var csAddrDisplay: NSTextField!
    @IBOutlet weak var csDataDisplay: NSTextField!
    @IBOutlet weak var csDataBinaryDisplay: NSTextField!
    
    @IBOutlet weak var regADisplay: NSTextField!
    @IBOutlet weak var regBDisplay: NSTextField!
    @IBOutlet weak var regCDisplay: NSTextField!
    @IBOutlet weak var regDDisplay: NSTextField!
    @IBOutlet weak var regSPDisplay: NSTextField!
    @IBOutlet weak var regPTBDisplay: NSTextField!
    @IBOutlet weak var regYDisplay: NSTextField!
    @IBOutlet weak var regXDisplay: NSTextField!
    @IBOutlet weak var marDisplay: NSTextField!
    @IBOutlet weak var mdrDisplay: NSTextField!

    @IBOutlet weak var dataBusDisplay: NSTextField!
    @IBOutlet weak var addressBusDisplay: NSTextField!
    
    @IBOutlet weak var statsClockCyclesDisplay: NSTextField!
    @IBOutlet weak var statsMemReadsDisplay: NSTextField!
    @IBOutlet weak var statsMemWritesDisplay: NSTextField!

    @IBOutlet weak var statusZDisplay: NSButton!
    @IBOutlet weak var statusCODisplay: NSButton!
    
    @IBOutlet weak var flagsPEDisplay: NSButton!
    @IBOutlet weak var flagsMDisplay: NSButton!
    @IBOutlet weak var flagsIEDisplay: NSButton!

    var testCase: EclairTest?
    
    func displayOpenDialog(_ fileType: String, allowedExtensions: [String] = ["rom"]) -> URL? {
        let dialog = NSOpenPanel();
        
        dialog.title                   = "Choose a " + fileType + " file";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = false;
        dialog.canCreateDirectories    = false;
        dialog.allowsMultipleSelection = false;
        dialog.allowedFileTypes        = allowedExtensions;
        
        if (dialog.runModal() == NSModalResponseOK) {
            let result = dialog.url // Pathname of the file
            
            if (result != nil) {
                return result
            }
            return nil
        }
        return nil
    }
    
    @IBAction func openButtonClicked(_ sender: Any) {
        guard let romURL = displayOpenDialog("ROM", allowedExtensions: ["rom", "test"]) else {
            print("Invalid URL")
            return
        }
        do {
            if(romURL.absoluteString.hasSuffix("rom")) {
                let romContents = try Data(contentsOf: romURL)
                var romByteArray: [Int] = []
                romContents.forEach { byte in
                    romByteArray.append(Int(byte))
                }
                machine.loadROM(romContents: romByteArray)
                memoryDisplayTable.reloadData()
                log("Binary ROM loaded.")
            } else {
                testCase = EclairTest(try String(contentsOf: romURL))
                machine.loadROM(romContents: testCase!.romContents)
                memoryDisplayTable.reloadData()
                let nc = NotificationCenter.default
                nc.post(name: Notification.Name(rawValue: "TestsLoaded"), object: testCase, userInfo: nil)
                log("Test ROM loaded.")
            }
        } catch {
            log("Unable to load ROM")
            return
        }
    }
    
    @IBAction func csOpenButtonClicked(_ sender: Any) {
        guard let csURL = URL(string: "file:///Users/sarahemm/eclair/sim/microcode.img") else {
            print("Invalid URL")
            return
        }
        do {
            let csContents = try Data(contentsOf: csURL)
            let csArray = csContents.withUnsafeBytes {
                Array(UnsafeBufferPointer<Int>(start: $0, count: csContents.count/MemoryLayout<Int>.size))
            }

            machine.loadControlStore(csContents: csArray)
            csDisasmDisplayTable.reloadData()
            log("Control Store loaded.")
        } catch {
            log("Unable to load Control Store")
            return
        }
    }

    @IBAction func resetButtonClicked(_ sender: Any) {
        machine.reset()
        updateUI()
        log("Processor reset.")
    }
    
    @IBAction func statsResetButtonClicked(_ sender: NSButton) {
        machine.stats.reset()
        updateUI();
    }
    
    func doSingleMicrocodeStep() {
        do {
            if(machine.at_fetch && machine.prev_pc != 0 && testCase != nil) {
                let testAddr = machine.prev_pc
                processTests(addr: testAddr)
            }
            try machine.singleStep()
        } catch(Memory.MemoryError.readFromUninitialized) {
            log("Processor halted due to read from uninitialized memory location.")
            haltProcessor()
        } catch {
            log("Processor halted due to exception in machine.singleStep().")
            haltProcessor()
        }

        updateUI()

        if(machine.is_halted) {
            log("Processor halted by HALT instruction.")
            haltProcessor()

            if(testCase != nil) {
                let testAddr = machine.pc
                processTests(addr: testAddr)
            }
        }
    }
    
    func processTests(addr: Int) {
        let testResults = testCase!.runTests(machine: machine, testAddr: addr)
        print(testResults)
        testResults.forEach { testResult in
            if(testResult.testOK) {
                let nc = NotificationCenter.default
                nc.post(name:Notification.Name(rawValue: "TestPassed"), object: testResult, userInfo: [:])
            } else {
                let nc = NotificationCenter.default
                nc.post(name:Notification.Name(rawValue: "TestFailed"), object: testResult, userInfo: [:])
            }
        }

    }
    
    @IBAction func microcodeStepButtonClicked(_ sender: NSButton) {
        doSingleMicrocodeStep()
    }
    
    @IBAction func instructionStepButtonClicked(_ sender: NSButton) {
        repeat {
            doSingleMicrocodeStep()
        } while(!machine.at_fetch && !machine.is_halted)
    }
    
    func haltProcessor() {
        runHaltControl.selectSegment(withTag: 0)
        runHaltClicked(runHaltControl)
    }
    
    var runTimer: Timer = Timer()
    var runDelay: TimeInterval = 0.5
    @IBAction func runHaltClicked(_ sender: NSSegmentedControl) {
        if(sender.selectedSegment == 1) {
            doSingleMicrocodeStep()
            runTimer = Timer.scheduledTimer(timeInterval: runDelay, target: self, selector: #selector(self.microcodeStepButtonClicked), userInfo: nil, repeats: true)
        } else {
            runTimer.invalidate()
        }
    }
    
    @IBAction func runSpeedAdjusted(_ sender: NSSlider) {
        switch(sender.intValue) {
            case 0:
                runDelay = 2
            case 1:
                runDelay = 1
            case 2:
                runDelay = 0.5
            case 3:
                runDelay = 0.25
            case 4:
                runDelay = 0.1
            default:
                runDelay = 1
        }
        if(runTimer.isValid) {
            runTimer.invalidate()
            runTimer = Timer.scheduledTimer(timeInterval: runDelay, target: self, selector: #selector(self.microcodeStepButtonClicked), userInfo: nil, repeats: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func updateUI() {
        csAddrDisplay.stringValue = String(format: "%02hhX", machine.cs_addr)
        csDataDisplay.stringValue = String(format: "%016qX", machine.cs_data)
        csDataBinaryDisplay.stringValue = String(machine.cs_data, radix: 2).leftPadding(toLength: 64, withPad: "0").splitByLength(8).joined(separator: " ").replacingOccurrences(of: "1", with: "🔴").replacingOccurrences(of: "0", with: "⚪")
        
        pcDisplay.stringValue = String(format: "%04X", machine.pc)
        irDisplay.stringValue = String(format: "%02hhX", machine.ir)
        
        regADisplay.stringValue = String(format: "%04X", machine.a)
        regBDisplay.stringValue = String(format: "%04X", machine.b)
        regCDisplay.stringValue = String(format: "%04X", machine.c)
        regDDisplay.stringValue = String(format: "%04X", machine.d)
        regSPDisplay.stringValue = String(format: "%04X", machine.sp)
        regPTBDisplay.stringValue = String(format: "%02X", machine.ptb)
        regXDisplay.stringValue = String(format: "%04X", machine.x)
        regYDisplay.stringValue = String(format: "%04X", machine.y)
        marDisplay.stringValue = String(format: "%04X", machine.mar)
        mdrDisplay.stringValue = String(format: "%04X", machine.mdr)
        
        addressBusDisplay.stringValue = String(format: "%08X", machine.bus_addr)
        dataBusDisplay.stringValue = String(format: "%02X", machine.bus_data)

        statusZDisplay.state = machine.status.z ? 1 : 0
        statusCODisplay.state = machine.status.co ? 1 : 0

        flagsPEDisplay.state = machine.flags.pe ? 1 : 0
        flagsMDisplay.state = machine.flags.m ? 1 : 0
        flagsIEDisplay.state = machine.flags.ie ? 1 : 0

        // update the page table display's contents and highlight the row we're currently using if paging is on
        pageTableDisplayTable.reloadData()
        pageTableDisplayTable.centreRow(row: machine.pagetable_addr, animated: true)
        
        // update the current position in the control store disassembly
        csDisasmDisplayTable.centreRow(row: machine.cs_addr, animated: true)
        
        // update the current position in memory
        // TODO: this should probably change the cell background color rather than using this edit hack
        memoryDisplayTable.editColumn((machine.bus_addr % 16) + 1, row: machine.bus_addr / 16, with: nil, select: true)
        
        // update the machine's current stats
        statsClockCyclesDisplay.stringValue = String(machine.stats.clockCycles)
        statsMemReadsDisplay.stringValue = String(machine.stats.memReads)
        statsMemWritesDisplay.stringValue = String(machine.stats.memWrites)
    }
    
    func log(_ message: String) {
        logDisplay.textStorage?.append(NSAttributedString(string: message + "\n"))
    }
}

extension ViewController: NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        if(tableView.identifier == "ControlStoreDisplayTable") {
            // Control Store Table
            return machine.controlStore.count
        } else if(tableView.identifier == "MemoryDisplayTable") {
            // Memory Display Table
            return Int(ceil(Double(machine.addressSpace.rom.contents.count) / 16.0))
        } else if(tableView.identifier == "PageTableDisplayTable") {
            // Page Table Table
            return machine.pageTable.memSize
        }
        return 0
    }
}

extension ViewController: NSTableViewDelegate {
    fileprivate enum CellIdentifiers {
        static let FlagsCell = "FlagsCellID"
        static let AddressCell = "AddressCellID"
        static let DisasmCell = "DisassemblyCellID"
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var text: String = ""
        var cellIdentifier: String = ""

        if(tableView.identifier == "ControlStoreDisplayTable") {
            // Control Store Table
            //var image: NSImage?
            
            if tableColumn == tableView.tableColumns[0] {
                text = ""
                cellIdentifier = CellIdentifiers.FlagsCell
            } else if tableColumn == tableView.tableColumns[1] {
                text = String(format: "%02hhX ", row)
                cellIdentifier = CellIdentifiers.AddressCell
            } else if tableColumn == tableView.tableColumns[2] {
                text = machine.disassembleMicrocode(machine.controlStore[row].raw)
                cellIdentifier = CellIdentifiers.DisasmCell
            }
            
            if let cell = tableView.make(withIdentifier: cellIdentifier, owner: nil) as? NSTableCellView {
                cell.textField?.stringValue = text
                //cell.imageView?.image = image ?? nil
                return cell
            }
        } else if(tableView.identifier == "MemoryDisplayTable") {
            // Memory Display Table
            // TODO: this just displays the ROM right now, it should be displaying all of the address space
            if(tableColumn == tableView.tableColumns[0]) {
                text = String(format: "%06X ", row * 16)
                cellIdentifier = "AddressCellID"
            } else {
                for i in stride(from: 0, through: 15, by: 1) {
                    if(tableColumn == tableView.tableColumns[i+1] && row*16+i < machine.addressSpace.rom.contents.count) {
                        text = String(format: "%02X ", machine.addressSpace.rom.contents[row*16+i])
                        cellIdentifier = "Byte" + String(i) + "CellID"
                    }
                }
            }
            
            if let cell = tableView.make(withIdentifier: cellIdentifier, owner: nil) as? NSTableCellView {
                cell.textField?.stringValue = text
                return cell
            }
        } else if(tableView.identifier == "PageTableDisplayTable") {
            if(tableColumn == tableView.tableColumns[0]) {
                text = String(format: "%03X ", row)
                cellIdentifier = "AddressCellID"
            } else if(tableColumn == tableView.tableColumns[1]) {
                text = String(format: "%04X ", machine.pageTable[row])
                cellIdentifier = "DataCellID"
            }
            
            if let cell = tableView.make(withIdentifier: cellIdentifier, owner: nil) as? NSTableCellView {
                cell.textField?.stringValue = text
                return cell
            }
        }
        return nil
    }
}
