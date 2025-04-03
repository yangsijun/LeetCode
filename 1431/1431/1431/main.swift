//
//  main.swift
//  1431
//
//  Created by 양시준 on 4/3/25.
//

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        for candy in candies {
            result.append(candy + extraCandies >= candies.max() ?? 0)
        }
        return result
    }
}
