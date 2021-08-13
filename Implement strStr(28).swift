class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
          var str = haystack
  
          for (i, _) in str.enumerated() {
            if !str.hasPrefix(needle) { str.removeFirst() }
            else { return i }
          }

          return needle.isEmpty ? 0 : -1
    }
}