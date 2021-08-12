class Solution {
    func isValid(_ s: String) -> Bool {
        let dict = ["(": ")", "[": "]", "{": "}"]
        var temp = [String]()
        let arr = s.map { String($0) }
        
        for s in 0..<arr.count {
            if let last = temp.last {
                if dict[last] == arr[s] { temp.removeLast() }
                else { temp.append(arr[s]) }
            } else {
                temp.append(arr[s])
            }
        }
        
        return temp.isEmpty
    }
}