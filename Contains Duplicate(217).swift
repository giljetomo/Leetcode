class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Bool]()
        for num in nums {
            if let _ = dict[num] { return true }
            else { dict[num] = true }
        }
        return false
    }
}