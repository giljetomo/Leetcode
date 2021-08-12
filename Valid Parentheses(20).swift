class Solution {
    func isValid(_ s: String) -> Bool {
        let dict = ["(": ")", "[": "]", "{": "}"]
        var temp = [String]()

        for str in s {
            if let last = temp.last {
                if dict[last] == String(str) { temp.removeLast() }
                else { temp.append(String(str)) }
            } else {
                temp.append(String(str))
            }
        }
        
        return temp.isEmpty
    }
}
