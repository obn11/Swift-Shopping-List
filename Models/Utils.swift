class Utils {

  static func normalize(_ word: String) -> String {
    var result = word.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)  
    result.removeAll(where: {$0.isPunctuation})
    if result.hasSuffix("s") {
      result = String(result.dropLast())
    }
    return result
  }
}