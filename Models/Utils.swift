class Utils {

  static func normalize(_ word: String) -> String {
    return word.lowercased().replacingOccurrences(of: " ", with: "")
  }
}