class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        let arr = s.map { String($0) }
        var result = 0, i = 0
  
        while i < arr.count {
            if i == arr.count - 1 {
                result += dict[arr[i]]!
            } else if dict[arr[i]]! < dict[arr[i + 1]]! {
                result += dict[arr[i + 1]]! - dict[arr[i]]!
                i += 2
                continue
            } else {
                result += dict[arr[i]]!
            }
                i += 1
            }
  
        return result
    }
}