//
//  main.swift
//  1768
//
//  Created by 양시준 on 4/2/25.
//

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var arr: [String] = []

        for c in word1 {
            arr.append(String(c))
        }
        var i = 1
        for c in word2 {
            if i > word1.count * 2 {
                arr.append(String(c))
            } else {
                arr.insert(String(c), at: i)
                i += 2
            }
        }

        return arr.joined()
    }
}
