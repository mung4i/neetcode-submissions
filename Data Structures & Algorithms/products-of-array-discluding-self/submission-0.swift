class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)

        var left = 1
        for index in 0..<nums.count {
            result[index] = left
            left *= nums[index]
        }

        var right = 1
        for index in stride(from: nums.count - 1, through: 0, by: -1) {
            result[index] *= right
            right *= nums[index]
        }
        return result
    }
}
