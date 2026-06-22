class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var resultDict: [Int: Int] = [:]
        for num in nums {
            resultDict[num, default: 0] += 1
        }
        
        var result: [Int] = []

        var k = k

        while k > 0 {
            if let maxPair = resultDict.max(by: { $0.value < $1.value }) {
                k -= 1
                result.append(maxPair.key)
                resultDict.removeValue(forKey: maxPair.key)
            }
        }

        return result
    }
}
