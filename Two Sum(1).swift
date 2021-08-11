class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
      
        for (index, num) in nums.enumerated() {
            let difference = target - num
      
            if let i = dict[difference] {
                return [index, i]
            }
        
            dict[num] = index
        }
        
        return []
    }
}