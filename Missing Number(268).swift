class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
      var dict = [Int: Bool]()
      var m = 0

      nums.forEach {
        m = max(m, $0)
        dict[$0] = true }

      for num in 0..<m {
        if dict[num] == nil { return num }
      }

      return m + 1   
    }
}

//  guard nums.count > 0 else { return 0 }
//  var sum = 0
//  for i in 1...nums.count { sum += i }
//  for num in nums { sum -= num }
//  return sum