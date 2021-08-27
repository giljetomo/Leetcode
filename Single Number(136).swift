class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var n = nums.first!
        for i in 1..<nums.count {
            n ^= nums[i]
        }

        return n
    }
}