import Foundation

func run(inputType: InputType) {
  let db = Database()
  db.seed()

  let inputHandler: InputHandler
  let outputHandler: OutputHandler
  
  switch inputType {
    case .cli:
      let cliHandler = CliHandler()
      inputHandler = cliHandler
      outputHandler = cliHandler
    case .file(let inputPath, let outputPath):
      let fileHandler = FileHandler(inputPath: inputPath, outputPath: outputPath)
      inputHandler = fileHandler
      outputHandler = fileHandler
  }

  let manager = ShoppingListManager(database: db, outputHandler: outputHandler)
  let input = inputHandler.getInput()
  manager.processInput(input)
  manager.processUnsorted()
}

run(inputType: .file(inputPath: "exampleInput.txt", outputPath: "exampleOutput.txt"))

enum InputType {
    case cli
    case file(inputPath: String, outputPath: String)
}