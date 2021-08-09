    func reverse(_ x: Int) -> Int {
        let isNegative = x < 0
        var num = isNegative ? -x : x
        var reversed = [Int]()
  
        while num > 0 {
            reversed.append(num % 10)
            num = num / 10
        }
  
        num = Int(reversed.compactMap { String($0) }.joined(separator: "")) ?? 0
        return (Int32.max < num || Int32.min > num) ? 0 : (isNegative ? -num : num)
    }