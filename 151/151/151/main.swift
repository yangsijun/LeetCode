//
//  main.swift
//  151
//
//  Created by 양시준 on 4/6/25.
//

class Solution {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ", omittingEmptySubsequences: true).reversed().joined(separator: " ")
    }
}
