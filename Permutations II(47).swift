class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
          var choices = [Int]()
        var soFar = [[Int]]()
        return permuteHelper(nums, &choices, &soFar)
    }
}

func permuteHelper(_ nums: [Int], _ choices: inout [Int], _ soFar: inout [[Int]]) -> [[Int]] {
  if nums.count == 0 {
    soFar.append(choices)
  } else {
    for i in 0..<nums.count {
      choices.append(nums[i])
      var a = nums
      a.remove(at: i)
      // if !soFar.contains(choices) {
      _ = permuteHelper(a, &choices, &soFar)
      // }
      choices.removeLast()
    }
  }
  if choices.count == 0 {
    return Array(Set(soFar))
  }
  return [[]]
}