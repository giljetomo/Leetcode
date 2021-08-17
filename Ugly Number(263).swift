class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n <= 0 { return false }
        var num = n 
        
        while num > 0 {
            if num % 5 == 0 {
                num /= 5
            } else if num % 3 == 0 {
                num /= 3
            } else if num % 2 == 0 {
                num /= 2
            } else {
                break
            }
        }
        
        return num == 1
    }
}