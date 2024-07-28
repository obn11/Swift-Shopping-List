class Utils {

  static func normalize(_ word: String) -> String {
    var result = word.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)  
    if result.starts(with: "- [x]") {
      result = String(result.dropFirst(6))
    }
    result.removeAll(where: {$0.isPunctuation})
    if result.hasSuffix("s") {
      result = String(result.dropLast())
    }
    return result
  }
}