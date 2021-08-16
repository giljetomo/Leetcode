class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
          let arr = String(k).compactMap { $0.wholeNumberValue }
          var i = num.count
          var j = arr.count
          var carry = 0
          var result = [Int]()

          while i >= 0 || j >= 0 {
            i -= 1
            j -= 1

            let numDigit = i >= 0 ? num[i] : 0
            let kDigit = j >= 0 ? arr[j] : 0
            let sum = numDigit + kDigit + carry
            if i >= 0 || j >= 0 {
              carry = sum >= 10 ? 1 : 0
              result.insert(sum >= 10 ? sum - 10 : sum, at: 0)
            }
          }

          if carry > 0 {
            result.insert(carry, at: 0)
          }

          return result
    }
}