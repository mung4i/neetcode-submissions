class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        var rows = Array(repeating: Set<Character>(), count: 9)
        var cols = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        for r in 0..<9 {
            for c in 0..<9 {
                let val = board[r][c]

                if val == "." { continue }

                let boxIndex = (r / 3) * 3 + (c / 3)
                if rows[r].contains(val) ||
                    cols[c].contains(val) ||
                    boxes[boxIndex].contains(val) {
                        return false
                        }

                rows[r].insert(val)
                cols[c].insert(val)
                boxes[boxIndex].insert(val)
            }

        }

        return true

    }
}
