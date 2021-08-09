class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var n = Double(n)
        
        while (n > 1) {
            n /= 2
            print(n)
        }
        return n == 1.0
    }
}