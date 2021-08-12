class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var arr = digits
        var shouldAdd = true
        var index = digits.count
  
        for (i, n) in arr.reversed().enumerated() {
            index -= 1
            if shouldAdd {
                if n + 1 <= 9 { shouldAdd = false }
                arr[index] = n + 1 == 10 ? 0 : n + 1
            } else {
                break
            }
      
            if index == 0 && shouldAdd { arr.insert(1, at: 0) }
        }
  
        return arr
    }
}