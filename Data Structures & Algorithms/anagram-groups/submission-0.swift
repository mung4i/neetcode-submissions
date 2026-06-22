class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagrams: [String: [String]] = [:]

        for str in strs {
            let sorted = String(str.sorted())
            anagrams[sorted, default: []].append(str)
        }

        return Array(anagrams.values)
    }
}
