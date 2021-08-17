class Solution {
    func isHappy(_ n: Int) -> Bool {
          var dict = [Int: Bool]()
          var num = n
          while num != 1 && dict[num] ?? true {
            dict[num] = false
            num = getNext(num)
          }
          return num == 1
    }
    
    func getNext(_ n: Int) -> Int {
        var sum = 0
        var num = n
        while num > 0 {
        let d = num % 10
        num /= 10
        sum += d * d
        }

        return sum
    }
}