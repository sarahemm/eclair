//
//  EclairControlDecode.swift
//  ECLairSimulator
//
//  Created by sen on 2018-03-19.
//  Copyright © 2018 Hackstrich. All rights reserved.
//

import Foundation

extension Int {
    //func isBitSet(_ bitNbr: Int) -> Bool {
    //    return(1 << bitNbr & self != 0)
    //}

    func bitField(startBit: Int, length: Int) -> Int {
        return(self >> startBit & ((1 << length) - 1))
    }
}

class ControlWord {
    let controlWord: Int
    
    enum XYSource: Int {
        case Immediate = 0
        case A
        case B
        case C
        case D
        case SP
        case MAR
        case MDR
        
        static let allValues = [Immediate, A, B, C, D, SP, MAR, MDR]
    }
    
    enum DestRegister: Int {
        case None = 0
        case A
        case B
        case C
        case D
        case SP
        case InvalidNotUsed
        case FromIR
        
        static let allValues = [None, A, B, C, D, SP, InvalidNotUsed, FromIR]
    }
    
    enum ALUMode: Int {
        case Arithmetic = 0
        case Logic = 1
        
        static let allValues = [Arithmetic, Logic]
    }
    
    enum ALUOperation: Int {
        case X = 0
        case XPlusXAndNotY
        case XPlusXAndY
        case XTimesTwo
        case XPlusYPlusZero
        case XPlusYPlusXAndNotY
        case Add
        case XTimesTwoPlusY
        case XPlusNotYPlusZero
        case Sub
        case XPlusNotYPlusXAndY
        case XPlusXPlusNotY
        case NegativeOne
        case XAndNotYMinusOne
        case XAndYMinusOne
        case XMinusOne
        
        static let allValues = [X, XPlusXAndNotY, XPlusXAndY, XTimesTwo, XPlusYPlusZero, XPlusYPlusXAndNotY, Add, XTimesTwoPlusY, XPlusNotYPlusZero, Sub, XPlusNotYPlusXAndY, XPlusXPlusNotY, NegativeOne, XAndNotYMinusOne, XAndYMinusOne]
    }
    
    enum OperationWidth: Int {
        case EightBit = 0
        case SixteenBit = 1

        static let allValues = [EightBit, SixteenBit]
    }
    
    enum BranchCondition: Int {
        case Unconditional = 0
        case Z = 1
        case OC = 2
        
        static let allValues = [Unconditional, Z, OC]
    }
    
    enum XYNibble: Int {
        case Immediate = 0
        case ActiveInterrupt = 1

        static let allValues = [Immediate, ActiveInterrupt]
    }
    
    enum MARSource: Int {
        case Z = 0
        case PC
        
        static let allValues = [Z, PC]
    }
    
    enum MDRSource: Int {
        case Z = 0
        case DataBus
        
        static let allValues = [Z, DataBus]
    }
    
    enum HighLowByte: Int {
        case Low = 0
        case High
        
        static let allValues = [Low, High]
    }
    
    var raw: Int {
        return controlWord
    }
    
    var writePTE: Bool {
        return controlWord.isBitSet(0)
    }
    
    var loadMDR: Bool {
        return controlWord.isBitSet(1)
    }
    
    var loadMAR: Bool {
        return controlWord.isBitSet(3)
    }

    var loadIR: Bool {
        return controlWord.isBitSet(4)
    }
    
    var incPC: Bool {
        return controlWord.isBitSet(5)
    }

    var loadPC: Bool {
        return controlWord.isBitSet(6)
    }
    
    // if we don't have an IR value, we can only say "load it from IR" if that's what the field is set to
    var loadReg: DestRegister {
        return DestRegister.allValues[controlWord.bitField(startBit: 7, length: 3)]
    }
    
    // if they pass us an IR value, we dereference and return the actual register to load even if it's FromIR
    func loadReg(_ irValue: Int) -> DestRegister {
        let destReg = DestRegister.allValues[controlWord.bitField(startBit: 7, length: 3)]
        print(destReg)
        if(destReg != .FromIR) {
            return destReg
        }
        let irReg = (irValue.bitField(startBit: 6, length: 2)) + 1
        print(irReg)
        return DestRegister.allValues[irReg]
    }
    
    
    
    var loadX: Bool {
        return controlWord.isBitSet(10)
    }

    var loadY: Bool {
        return controlWord.isBitSet(11)
    }
    
    var loadPTB: Bool {
        return controlWord.isBitSet(13)
    }

    var loadStatus: Bool {
        return controlWord.isBitSet(15)
    }
    
    var clearInterruptFlags: Bool {
        return controlWord.isBitSet(16)
    }

    var memWrite: Bool {
        return controlWord.isBitSet(17)
    }
    
    var loadFlagPE: Bool {
        return controlWord.isBitSet(18)
    }
    
    var loadFlagM: Bool {
        return controlWord.isBitSet(19)
    }
    
    var loadFlagIE: Bool {
        return controlWord.isBitSet(20)
    }
    
    var mdrByteSelect: HighLowByte {
        return HighLowByte.allValues[controlWord.bitField(startBit: 24, length: 1)]
    }
    
    var nextCSAddr: Int {
        return controlWord.bitField(startBit: 25, length: 8)
    }
    
    var loadMARFrom: MARSource {
        return MARSource.allValues[controlWord.bitField(startBit: 33, length: 1)]
    }

    var loadMDRFrom: MDRSource {
        return MDRSource.allValues[controlWord.bitField(startBit: 34, length: 1)]
    }
    
    var aluMode: ALUMode {
        return ALUMode.allValues[controlWord.bitField(startBit: 35, length: 1)]
    }
    
    var aluOperation: ALUOperation {
        return ALUOperation.allValues[controlWord.bitField(startBit: 36, length: 4)]
    }
    
    var xySource: XYSource {
        return XYSource.allValues[controlWord.bitField(startBit: 40, length: 3)]
    }
    
    var carryIn: Bool {
        return controlWord.isBitSet(44)
    }
    
    var operationWidth: OperationWidth {
        return OperationWidth.allValues[controlWord.bitField(startBit: 45, length: 1)]
    }
    
    var branchCondition: BranchCondition {
        return BranchCondition.allValues[controlWord.bitField(startBit: 46, length: 3)]
    }
    
    var immediateValue: Int {
        return controlWord.bitField(startBit: 49, length: 2)
    }

    var xyNibble: XYNibble {
        return XYNibble.allValues[controlWord.bitField(startBit: 51, length: 1)]
    }
    
    var memRead: Bool {
        return controlWord.isBitSet(53)
    }

    init(_ word: Int) {
        controlWord = word
    }
}
