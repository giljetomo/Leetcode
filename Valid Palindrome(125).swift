class Solution {
    func isPalindrome(_ s: String) -> Bool {
         var word = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "").lowercased().map { String($0) }
  
        while word.count >= 2 && word.first == word.last {
            word.removeFirst()
            word.removeLast()
        }
  
        return word.count <= 1 ? true : false
    }
}