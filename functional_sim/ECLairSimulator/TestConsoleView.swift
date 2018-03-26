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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nc = NotificationCenter.default
        nc.addObserver(forName:Notification.Name(rawValue: "TestsLoaded"), object: nil, queue: nil, using: testsLoaded)
        nc.addObserver(forName:Notification.Name(rawValue: "TestPassed"), object: nil, queue: nil, using: testPassed)
        nc.addObserver(forName:Notification.Name(rawValue: "TestFailed"), object: nil, queue: nil, using: testFailed)
    }

    var addr: Int = 0
    func testsLoaded(notification: Notification) {
        let testCase: EclairTest = notification.object! as! EclairTest
        // TODO: actually do something with the test cases to build the table
    }
    
    func testPassed(notification: Notification) {
        testsPassed += 1
        testsPassedDisplay.stringValue = String(testsPassed)
    }
    
    func testFailed(notification: Notification) {
        testsFailed += 1
        testsFailedDisplay.stringValue = String(testsFailed)
    }
}
