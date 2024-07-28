import Foundation

public class FileHandler: InputHandler, OutputHandler {
    let inputPath: String
    let outputPath: String

    init(inputPath: String, outputPath: String) {
        self.inputPath = inputPath
        self.outputPath = outputPath
    }

    func getInput() -> [String] {
        guard let content = try? String(contentsOfFile:inputPath, encoding: .utf8) else {
            print("Error: Unable to read file at \(inputPath)")
            return []
        }
        let lines = content.components(separatedBy: .newlines)
        return lines.filter { line in
            let trimmedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)
            return trimmedLine.hasPrefix("- [x]") //nmi probably misintrepreted
        }
    }

    func output(_ content: String) {
        do {
            try content.write(to: URL(fileURLWithPath: outputPath), atomically: true, encoding: .utf8)
            print("File successfully written to \(outputPath)")
        } catch {
            print("Error writing file: \(error.localizedDescription)")
        }
    }
}