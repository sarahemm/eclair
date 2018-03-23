//
//  EclairAddressSpace.swift
//  ECLairSimulator
//
//  Created by sen on 2017-06-03.
//  Copyright © 2017 Hackstrich. All rights reserved.
//

import Foundation

// AddressSpace - Manages address space and access to it, passing accesses off to the right RAM/ROM/device
class AddressSpace {
    var rom: Memory
    var ram: Memory
    var romStartAddr: Int
    var ramStartAddr: Int
    
    enum AddressError: Error {
        case noDeviceAtAddress
    }
    
    init(romStart: Int, romSize: Int, ramStart: Int, ramSize: Int) {
        romStartAddr = romStart
        ramStartAddr = ramStart
        rom = Memory(size: romSize, readOnly: true)
        ram = Memory(size: ramSize)
    }
    
    func loadROM(romContents: Array<Int>) {
        rom.loadROMContents(data: romContents)
    }
    
    func deviceAt(_ address: Int) throws -> Memory {
        switch(address) {
            case romStartAddr..<(romStartAddr + rom.memSize):
                return rom
            case ramStartAddr..<(ramStartAddr + ram.memSize):
                return ram
            default:
                throw AddressError.noDeviceAtAddress
        }
    }
    
    func read(_ address: Int) throws -> Int {
        return try deviceAt(address).read(address)
    }

    func write(address: Int, data: Int) throws {
        try deviceAt(address).write(address: address, data: data)
    }
}
