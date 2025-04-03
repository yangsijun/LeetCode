//
//  main.swift
//  1071
//
//  Created by 양시준 on 4/3/25.
//

import Foundation

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        // longer string to str1, shorter one to str2
        if str1.count < str2.count {
            return gcdOfStrings(str2, str1)
        }
        
        // get gcd of string lengths
        let gcd = gcd(str1.count, str2.count)
        
        // get substring
        let substring = String(str1[str1.index(str1.startIndex, offsetBy: 0)..<str1.index(str1.startIndex, offsetBy: gcd)])
        
        // check divisor
        for i in stride(from: 0, to: str1.count, by: gcd) {
            if str1[str1.index(str1.startIndex, offsetBy: i)..<str1.index(str1.startIndex, offsetBy: i + gcd)] != substring {
                return ""
            }
        }
        for i in stride(from: 0, to: str2.count, by: gcd) {
            if str2[str2.index(str2.startIndex, offsetBy: i)..<str2.index(str2.startIndex, offsetBy: i + gcd)] != substring {
                return ""
            }
        }
        
        return substring
    }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        return gcd(b, a % b)
    }
}

