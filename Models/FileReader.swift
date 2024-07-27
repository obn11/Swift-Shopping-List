import Foundation

public class FileHandler {
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

    public static func outputFile(at path: String, with content: String) {
        //let fileManager = FileManager.default

        do {
            // Create the file if it doesn't exist, or overwrite it if it does
            try content.write(to: URL(fileURLWithPath: path), atomically: true, encoding: .utf8)
            print("File successfully written to \(path)")
        } catch {
            print("Error writing file: \(error.localizedDescription)")
        }
    }
}