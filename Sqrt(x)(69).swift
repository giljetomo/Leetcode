class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 { return 0 }
        if x <= 3 { return 1 }
        
        var sqrt = 0
        var num = x
        var odd = 1

        while num > 0 {
        num = num - odd
        odd += 2
        if num >= 0 { sqrt += 1 }
        }

        return sqrt
    }
}