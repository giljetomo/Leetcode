class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        
        var reverted = 0, remainder = 0, y = x

        while (y != 0) {
            remainder = y % 10
            reverted = 10 * reverted + remainder
            y /= 10;
        }
  
        if x == reverted { return true }
        return false
    }
}