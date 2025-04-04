//
//  main.swift
//  605
//
//  Created by 양시준 on 4/4/25.
//

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var arr = flowerbed
        arr.insert(0, at: 0)
        arr.append(0)
        
        var cnt = 0
        var idx = 1
        
        while idx < arr.count - 1 && cnt < n {
            if arr[idx] == 0 {
                if arr[idx + 1] == 1 {
                    idx += 2
                } else {
                    if arr[idx - 1] == 1 {
                        idx += 1
                    } else {
                        idx += 2
                        cnt += 1
                    }
                }
            } else {
                idx += 2
            }
        }
        
        if cnt == n {
            return true
        }
        return false
    }
}
