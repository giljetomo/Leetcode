class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
          var num = 1
    
          while num < n {
            num *= 3
          }

          return num == n
    }
}