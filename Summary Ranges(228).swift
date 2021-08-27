class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard nums.count > 0 else { return [] }
        
        var a = nums.first!
        var counter = 1
        var arr = [String]()
        
      for i in 1...nums.count {
        guard i < nums.count else {
          if counter > 1 { arr.append("\(a)->\(nums[i-1])") }
          else { arr.append(String(a)) }
          break
        }
          if nums[i] == a + counter { counter += 1 }
          else {
            if counter > 1 {
              arr.append("\(a)->\(nums[i-1])")
              counter = 1
            } else {
              arr.append(String(a))
            }
            a = nums[i]
          }
          
        }
  
        return arr
    }
}