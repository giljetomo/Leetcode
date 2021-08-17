class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        var sum = 0
        var i = 1
        
        while i * i <= num {
            if num % i == 0 { 
                sum += i
                if (i * i != num) {
                    sum += num / i
                }
            }
            i += 1
        }
        
        return sum - num == num
    }
}