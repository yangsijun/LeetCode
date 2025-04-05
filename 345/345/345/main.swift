//
//  main.swift
//  345
//
//  Created by 양시준 on 4/5/25.
//

class Solution {
    func reverseVowels(_ s: String) -> String {
        var arr = Array(s)
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            while left < arr.count && !isVowel(arr[left]) {
                left += 1
            }
            while right >= 0 && !isVowel(arr[right]) {
                right -= 1
            }
            if left < right {
                arr.swapAt(left, right)
            }
            left += 1
            right -= 1
        }
        
        return String(arr)
    }
    
    func isVowel(_ c: Character) -> Bool {
        switch c {
            case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
            return true
        default:
            return false
        }
    }
}
