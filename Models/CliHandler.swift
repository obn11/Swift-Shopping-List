import Foundation

class CliHandler: InputHandler, OutputHandler {
  func getInput() -> [String] {
    print("Enter your shopping list (one item per line, enter an empty line to finish):")
    var inputList: [String] = []
    while let line = readLine(), !line.isEmpty {
      inputList.append(line)
    }
    return inputList
  }

  func output(_ content: String) {
    print(content)
  }
} 


