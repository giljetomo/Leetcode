class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
          var i = num1.count
          var j = num2.count
          var result = ""
          var carry = 0

          while i >= 0 || j >= 0 {
            i -= 1
            j -= 1
            if let num1Digit = i >= 0 ? Int(String(num1[num1.index(num1.startIndex, offsetBy: i)])) : 0,
               let num2Digit = j >= 0 ? Int(String(num2[num2.index(num2.startIndex, offsetBy: j)])) : 0 {
                let sum = num1Digit + num2Digit + carry
              if i >= 0 || j >= 0 {
                carry = sum >= 10 ? 1 : 0
                result.insert(contentsOf: String((sum >= 10) ? sum - 10 : sum), at: result.startIndex)
      }
    }
  }
  if carry > 0 { result.insert(contentsOf: String(carry), at: result.startIndex)}
  return result
    }
}