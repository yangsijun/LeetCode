//
//  main.swift
//  334
//
//  Created by 양시준 on 4/8/25.
//

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        if nums.count < 3 {
            return false
        }
        
        var smallestNumLeft: [Int] = [Int](repeating: 0, count: nums.count)
        var largestNumRight: [Int] = [Int](repeating: 0, count: nums.count)
        
        smallestNumLeft[0] = nums[0]
        largestNumRight[nums.count - 1] = nums[nums.count - 1]
        
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            if largestNumRight[i + 1] < nums[i] {
                largestNumRight[i] = nums[i]
            } else {
                largestNumRight[i] = largestNumRight[i + 1]
            }
        }
                               
        for i in 1..<nums.count - 1 {
            if smallestNumLeft[i - 1] > nums[i] {
                smallestNumLeft[i] = nums[i]
            } else {
                smallestNumLeft[i] = smallestNumLeft[i - 1]
            }
            
            if smallestNumLeft[i - 1] < nums[i] && nums[i] < largestNumRight[i + 1] {
                return true
            }
        }
        return false
    }
}
