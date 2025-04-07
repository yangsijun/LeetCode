//
//  main.swift
//  238
//
//  Created by 양시준 on 4/7/25.
//

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var answer: [Int] = []
        var leftCumProd: [Int] = [Int](repeating: 1, count: nums.count)
        var rightCumProd: [Int] = [Int](repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            leftCumProd[i] = leftCumProd[i - 1] * nums[i - 1]
            rightCumProd[nums.count - 1 - i] = rightCumProd[nums.count - i] * nums[nums.count - i]
        }
        
        for i in 0..<nums.count {
            answer.append(leftCumProd[i] * rightCumProd[i])
        }
        
        return answer
    }
}
