class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen: [Int: Int] = [:]

        for (index, value) in nums.enumerated() {
            let predicate = target - nums[index]

            if let located = seen[predicate] {
                return [located, index]
            }
            seen[value] = index
        }

        return []
    }
}
