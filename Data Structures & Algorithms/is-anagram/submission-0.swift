class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var charCounts: [Character: Int] = [:]
        
        for char in s {
            charCounts[char, default: 0] += 1
        }
        
        for char in t {
            if let count = charCounts[char], count > 0 {
                charCounts[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
