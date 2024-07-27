import Foundation

public class FileReader {
    public static func processFile(at path: String) -> [String] {
        guard let content = try? String(contentsOfFile: path, encoding: .utf8) else {
            print("Error: Unable to read file at \(path)")
            return []
        }

        let lines = content.components(separatedBy: .newlines)
        var processedItems: [String] = []

        for line in lines {
            let trimmedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)

            // Skip empty lines, lines starting with [ ], and potential titles
            if !trimmedLine.hasPrefix("- [x]") {
                continue
            }

            processedItems.append(trimmedLine)
        }

        return processedItems
    }

    public static func printProcessedItems(_ items: [String]) {
        print("Processed items:")
        for (index, item) in items.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}