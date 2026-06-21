class Solution {

    var isEmptyString = false
    var isEmptyStrings = false

    func encode(_ strs: [String]) -> String {
        isEmptyStrings = strs.isEmpty
        var result: [String] = []

        for (index, value) in strs.enumerated() {
            var pipe: String = index == strs.count - 1 ? "" : "|"

            result.append("\(value.toBase64() ??  "")\(pipe)")
        }
        return result.joined()
    }

    func decode(_ str: String) -> [String] {
        if isEmptyStrings {
            return []
        }
        if str == "" {
            return [""]
        }
        return str.components(separatedBy: "|")
            .compactMap { $0.fromBase64() }
    }
}

extension String {
    // Encode a string to Base64
    func toBase64() -> String? {
        return self.data(using: .utf8)?.base64EncodedString()
    }

    // Decode a Base64 string back to original text
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
