//
//  EclairMemory.swift
//  ECLairSimulator
//
//  Created by sen on 2017-06-03.
//  Copyright © 2017 Hackstrich. All rights reserved.
//

import Foundation

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

class Memory {
    var memSize: Int
    var memWidth: Int
    var memReadOnly: Bool
    var contents: [Int]
    
    enum MemoryError: Error {
        case invalidAddress
        case dataTooWide
        case writeToROM
        case readFromUninitialized
    }
    
    init(size: Int, width: Int = 8, readOnly: Bool = false) {
        memSize = size
        memWidth = width
        memReadOnly = readOnly
        contents = Array(repeating: 0, count: memSize)
    }
    
    func write(address: Int, data: Int) throws {
        if(memReadOnly == true) {
            throw MemoryError.writeToROM
        }
        if(address > memSize) {
            throw MemoryError.invalidAddress
        }
        if(data > 2^^memWidth-1) {
            throw MemoryError.dataTooWide
        }
        contents[address] = data
    }
    
    func loadROMContents(data: Array<Int>) {
        contents = data
    }
    
    func read(_ address: Int) throws -> Int {
        if(address > memSize) {
            throw MemoryError.invalidAddress
        }
        if(address >= contents.count) {
            throw MemoryError.readFromUninitialized
        }
        return contents[address]
    }
    
    // these work but can't do the checking/throwing that read/write do, so we should avoid using them
    subscript(address: Int) -> Int {
        get {
            return contents[address]
        }
        set(data) {
            if(memReadOnly == false) {
                contents[address] = data
            }
        }
    }
}
