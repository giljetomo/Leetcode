class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
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
      let a = nums.filter { $0 != nums[i] }
      _ = permuteHelper(a, &choices, &soFar)
      choices.removeLast()
    }
  }
  if choices.count == 0 {
    return soFar
  }
  return [[]]
}