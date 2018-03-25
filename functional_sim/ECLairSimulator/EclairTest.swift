//
//  TestParser.swift
//  ECLairSimulator
//
//  Created by sen on 2018-03-24.
//  Copyright © 2018 Hackstrich. All rights reserved.
//

import Foundation

extension String {
    func capturedGroups(_ pattern: String) -> [String] {
        var results = [String]()
        
        var regex: NSRegularExpression
        do {
            regex = try NSRegularExpression(pattern: pattern, options: [])
        } catch {
            return results
        }
        
        let matches = regex.matches(in: self, options: [], range: NSRange(location:0, length: self.characters.count))
        
        guard let match = matches.first else { return results }
        
        let lastRangeIndex = match.numberOfRanges - 1
        guard lastRangeIndex >= 1 else { return results }
        
        for i in 1...lastRangeIndex {
            let capturedGroupIndex = match.rangeAt(i)
            let matchedString = (self as NSString).substring(with: capturedGroupIndex)
            results.append(matchedString)
        }
        
        return results
    }
    
    func hexToInt() -> Int {
        var uintBuf: UInt32 = 0
        
        let scanner = Scanner(string: self)
        scanner.scanHexInt32(&uintBuf)
        return Int(uintBuf)
    }
    
    func binaryToInt() -> Int {
        return Int(strtoul(self, nil, 2))
    }
    
    func decimalToInt() -> Int {
        var intBuf: Int = 0
        
        let scanner = Scanner(string: self)
        scanner.scanInt(&intBuf)
        return intBuf
    }
}

enum TestRegister {
    case A
    case B
    case C
    case D
    case SP
    case PC
    case PTB
    case AddressBus
    case DataBus
    case Status
    case Flags
}

struct TestStep {
    var testRegister: TestRegister
    var testData: Int
    
    init(register: TestRegister, data: Int) {
        testRegister = register
        testData = data
    }
}

struct TestResult {
    var register: TestRegister
    var expectedData: Int
    var actualData: Int
    var testOK: Bool

    init(register registerParam: TestRegister, expectedData expectedDataParam: Int, actualData actualDataParam: Int, testOK testOKParam: Bool) {
        register = registerParam
        expectedData = expectedDataParam
        actualData = actualDataParam
        testOK = testOKParam
    }
}

class EclairTest {
    var romContents: [Int]
    var testSteps: [[TestStep]]
    
    init(_ testText: String) {
        var addr: Int = 0
        var testAddr: Int = 0
        
        // TODO: we can only handle 4k programs right now, I can't make dynamic arrays work though so this will do for now
        romContents = Array(repeating: 0, count: 4096)
        // TODO: same here, we can only do 16 tests per step currently
        testSteps = Array(repeating: Array(), count: 4096)
        
        testText.enumerateLines { testLine, _ in
            if(testLine.hasPrefix("@")) {
                if(testLine.capturedGroups("@([0-9A-Za-z]+)\\s+//\\s+pc:\\s+([0-9A-Za-z]+)").count == 2) {
                    // it's a seek where the virtual address != the physical address
                    addr = testLine.capturedGroups("@([0-9A-Za-z]+)\\s+//\\s+pc:\\s+([0-9A-Za-z]+)")[0].hexToInt()
                    testAddr = testLine.capturedGroups("@([0-9A-Za-z]+)\\s+//\\s+pc:\\s+([0-9A-Za-z]+)")[1].hexToInt()
                } else {
                    // it's a seek where virtual address == physical address
                    let newAddr = testLine.capturedGroups("@([0-9A-Za-z]+)")[0].hexToInt()
                    addr = newAddr
                    testAddr = newAddr
                }
            } else if(testLine.hasPrefix("0") || testLine.hasPrefix("1")) {
                let data = testLine.capturedGroups("([01]+)")[0].binaryToInt()
                self.romContents[addr] = data
                addr += 1
                testAddr += 1
            } else if(testLine.hasPrefix("// expect: ")) {
                let testInfo = testLine.capturedGroups("//\\s+expect:\\s+([a-z_]+)=(.*)")
                let testRegisterRaw = testInfo[0]
                let testDataRaw = testInfo[1]
                var testData: Int
                if(testDataRaw.hasPrefix("0x")) {
                    testData = testDataRaw.hexToInt()
                } else if(testDataRaw.hasPrefix("0") || testDataRaw.hasPrefix("1") || testDataRaw.hasPrefix("x")) {
                    // the tests check that some things are 'x' in verilog, we don't have the concept of 'x' so make sure they're zero
                    testData = testDataRaw.replacingOccurrences(of: "x", with: "0").replacingOccurrences(of: "_", with: "").binaryToInt()
                } else {
                    // TODO: should make sure this is really a decimal number
                    testData = testDataRaw.decimalToInt()
                }
                
                var testRegister: TestRegister
                switch(testRegisterRaw) {
                    case "reg_a":
                        testRegister = .A
                    case "reg_b":
                        testRegister = .B
                    case "reg_c":
                        testRegister = .C
                    case "reg_d":
                        testRegister = .D
                    case "reg_sp":
                        testRegister = .SP
                    case "ptb":
                        testRegister = .PTB
                    case "pc":
                        testRegister = .PC
                    case "bus_addr":
                        testRegister = .AddressBus
                    case "bus_data":
                        testRegister = .DataBus
                    default:
                        // TODO: this should be reported as a test problem
                        testRegister = .Flags
                        print("Skipping unknown test register '" + testRegisterRaw + "'")
                }
                // TODO: addr-1 may not be right in all cases
                self.testSteps[testAddr-1].append(TestStep.init(register: testRegister, data: testData))
            }
        }
    }
    
    func runTests(machine: Machine) -> [TestResult] {
        var testResults: [TestResult]
        testResults = Array()
        
        testSteps[machine.pc].forEach { testStep in
            var actualData: Int
            
            switch(testStep.testRegister) {
                case .A:
                    actualData = machine.a
                case .B:
                    actualData = machine.b
                case .C:
                    actualData = machine.c
                case .D:
                    actualData = machine.d
                case .PC:
                    actualData = machine.pc
                case .AddressBus:
                    actualData = machine.bus_addr
                case .DataBus:
                    actualData = machine.bus_data
                default:
                    // TODO: real error
                    actualData = 0xDECAF000
            }
            testResults.append(TestResult.init(register: testStep.testRegister, expectedData: testStep.testData, actualData: actualData, testOK: testStep.testData == actualData))
        }
        
        return testResults
    }
}
