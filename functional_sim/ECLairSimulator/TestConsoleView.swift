//
//  TestConsoleView.swift
//  ECLairSimulator
//
//  Created by sen on 2018-03-25.
//  Copyright © 2018 Hackstrich. All rights reserved.
//

import Cocoa

class TestConsoleViewController: NSViewController {
    @IBOutlet var testStepsTable: NSTableView!
    
    @IBOutlet weak var testsPassedDisplay: NSTextField!
    @IBOutlet weak var testsFailedDisplay: NSTextField!
    @IBOutlet weak var testsProblemedDisplay: NSTextField!
    
    var testsPassed: Int = 0
    var testsFailed: Int = 0
    // TODO: implement test problems
    
    var addr: Int = 0
    var testSteps: [TestStep]
    var testResults: [TestResult?]
    
    required init?(coder decoder: NSCoder) {
        testSteps = Array()
        testResults = Array()
        super.init(coder: decoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nc = NotificationCenter.default
        nc.addObserver(forName:Notification.Name(rawValue: "TestsLoaded"), object: nil, queue: nil, using: testsLoaded)
        nc.addObserver(forName:Notification.Name(rawValue: "TestPassed"), object: nil, queue: nil, using: testPassed)
        nc.addObserver(forName:Notification.Name(rawValue: "TestFailed"), object: nil, queue: nil, using: testFailed)
    }
    
    
    @IBAction func resetTestResults(_ sender: NSButton) {
        testsPassed = 0
        testsFailed = 0
        testsPassedDisplay.stringValue = String(testsPassed)
        testsFailedDisplay.stringValue = String(testsFailed)
        testResults.removeAll()
        testStepsTable.reloadData()
    }

    func testsLoaded(notification: Notification) {
        let tests: EclairTest = notification.object! as! EclairTest
        // TODO: actually do something with the test cases to build the table
        tests.testSteps.forEach { testCases in
            testCases.forEach { testCase in
                testSteps.append(TestStep(id: testCase.testStepId, address: testCase.testAddress, register: testCase.testRegister, data: testCase.testData))
            }
        }
        testStepsTable.reloadData()
    }
    
    func testPassed(notification: Notification) {
        let result: TestResult = notification.object! as! TestResult

        testsPassed += 1
        testsPassedDisplay.stringValue = String(testsPassed)
        while testResults.count <= result.testStepId {
            testResults.append(nil)
        }
        testResults.insert(result, at: result.testStepId)
        testStepsTable.reloadData()
    }
    
    func testFailed(notification: Notification) {
        let result: TestResult = notification.object! as! TestResult

        testsFailed += 1
        testsFailedDisplay.stringValue = String(testsFailed)
        while testResults.count <= result.testStepId {
            testResults.append(nil)
        }
        testResults.insert(result, at: result.testStepId)
        testStepsTable.reloadData()
    }
}

extension TestConsoleViewController: NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return testSteps.count
    }
}

extension TestConsoleViewController: NSTableViewDelegate {
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var text: String = ""
        var cellIdentifier: String = ""
        
        if(tableColumn == tableView.tableColumns[0]) {
            text = String(testSteps[row].testStepId)
            cellIdentifier = "TestIdCell"
        } else if(tableColumn == tableView.tableColumns[1]) {
            text = String(format: "%03X ", testSteps[row].testAddress)
            cellIdentifier = "AddressCell"
        } else if(tableColumn == tableView.tableColumns[2]) {
            text = String(describing: testSteps[row].testRegister)
            cellIdentifier = "TestRegisterCell"
        } else if(tableColumn == tableView.tableColumns[3]) {
            text = String(format: "%X ", testSteps[row].testData)
            cellIdentifier = "ExpectedValueCell"
        } else if(tableColumn == tableView.tableColumns[4]) {
            if(row < testResults.count && testResults[row] != nil) {
                text = String(format: "%X ", testResults[row]!.actualData)
                cellIdentifier = "ActualValueCell"
            }
        } else if(tableColumn == tableView.tableColumns[5]) {
            if(row < testResults.count && testResults[row] != nil) {
                if(testResults[row]!.testOK) {
                    text = "Pass"
                } else {
                    text = "Fail"
                }
                cellIdentifier = "ResultCell"
            }
        }
        
        if let cell = tableView.make(withIdentifier: cellIdentifier, owner: nil) as? NSTableCellView {
            cell.textField?.stringValue = text
            return cell
        }
        return nil
    }
}
