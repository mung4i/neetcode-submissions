class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longestStreak = 0

        for num in numSet {
            // Only start counting if 'num' is the beginning of a sequence
            if !numSet.contains(num - 1) {
                var currentNum = num
                var currentStreak = 1

                // Count upwards as long as consecutive numbers exist
                while numSet.contains(currentNum + 1) {
                    currentNum += 1
                    currentStreak += 1
                }

                // Update the maximum sequence found so far
                longestStreak = max(longestStreak, currentStreak)
            }
        }

        return longestStreak
    }
}
