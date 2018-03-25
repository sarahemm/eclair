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
}
