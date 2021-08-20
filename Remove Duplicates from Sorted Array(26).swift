class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
          var current = -101
          var index = -1
          for num in nums {
            if num != current && num >= current {
              index += 1
              nums[index] = num
              current = num
            }
          }

          return index + 1
    }
}