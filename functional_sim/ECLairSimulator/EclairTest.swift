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
}


class EclairTest {
    var romContents: [Int]
    
    init(_ testText: String) {
        var addr: Int = 0
        // TODO: we can only handle 4k programs right now, I can't make dynamic arrays work though so this will do for now
        romContents = Array(repeating: 0, count: 4096)
        
        testText.enumerateLines { testLine, _ in
            if(testLine.hasPrefix("@")) {
                let newAddr = testLine.capturedGroups("@([0-9A-Za-z]+)")[0].hexToInt()
                addr = newAddr
            } else if(testLine.hasPrefix("0") || testLine.hasPrefix("1")) {
                let data = testLine.capturedGroups("([01]+)")[0].binaryToInt()
                self.romContents[addr] = data
                addr += 1
            }
        }
    }
}
