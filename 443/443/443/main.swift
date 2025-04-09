//
//  main.swift
//  443
//
//  Created by 양시준 on 4/9/25.
//

class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var first: Int
        var cnt: Int
        
        var i: Int = 0
        while i < chars.count {
            first = i
            cnt = 1
            
            while i < chars.count - 1 && chars[i] == chars[i + 1] {
                i += 1
                cnt += 1
            }
            
            if cnt > 1 {
                for _ in 0..<(cnt - 1) {
                    chars.remove(at: first)
                }
                
                let cntCharArr: [Character] = String(cnt).map { Character(extendedGraphemeClusterLiteral: $0) }
                chars.insert(contentsOf: cntCharArr, at: first + 1)
                i = first + cntCharArr.count
            }
            
            i += 1
        }
        
        return chars.count
    }
}
