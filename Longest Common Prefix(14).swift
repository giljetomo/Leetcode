class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var minimumString = strs.sorted(by: <)[0]
  
        for str in strs {
            while !str.hasPrefix(minimumString) {
                minimumString.removeLast()
            }
            if minimumString.isEmpty { break }
        }
  
        return minimumString
    }
}