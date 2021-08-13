class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        
        for str in s.reversed() {
            if str != " " { count += 1 }
            else if count > 0 { break }
        }
        return count
    }
}
