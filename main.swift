import Foundation

func Run () -> Bool {
  let db = db()
  db.seed()
  //db.log()
  let manager = ShoppingListManager(with: db)
  manager.request = GetInput(inputType: "FILE")
  manager.ProcessRequest()
  manager.ProcessUnsorted()
  manager.currentTrip.Log()
  return true
}

Run()

// Wait for the task to complete
//await result

print("Program completed")

// Keep the program running
//RunLoop.main.run()

// Helpers 
// TODO temp, make inputType enum
func GetInput (inputType: String = "CMD") -> [String] {
  if (inputType == "CMD") {
    return cli.Input()
  } else if (inputType == "FILE") {
    let lines = FileReader.processFile(at: "exampleFile.txt")
    //FileReader.printProcessedItems(lines)
    return lines
  } else {
    print("Enter the input")
  }
  return [""]
}

