class Solution {
    func addDigits(_ num: Int) -> Int {
        if num < 10 { return num }
  
          var arr = [Int]()
          var n = num
          while n > 0 {
            arr.append(n % 10)
            n /= 10
          }
          return addDigits(arr.reduce(0,+))
    }
}