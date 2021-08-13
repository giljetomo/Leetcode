class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
          var i = a.count
          var j = b.count
          var result = ""
          var carry = 0

          while i >= 0 || j >= 0 {
            i -= 1
            j -= 1
            if let aBit = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)])) : 0,
               let bBit = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)])) : 0 {
                let sum = aBit + bBit + carry
              if i >= 0 || j >= 0 {
                carry = (sum == 2 || sum == 3) ? 1 : 0
                result.insert(contentsOf: String((sum == 1 || sum == 3) ? 1 : 0), at: result.startIndex)
              }
            }
          }
          if carry > 0 { result.insert(contentsOf: "1", at: result.startIndex)}
          return result
    }
}