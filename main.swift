import Foundation

func Run () {
  let db = db()
  db.seed()
  //db.log()
  let manager = ShoppingListManager(with: db)
  manager.request = GetInput(inputType: "FILE")
  manager.ProcessRequest()
  manager.ProcessUnsorted()
  manager.currentTrip.Log()
}

Run()

print("Program completed")

// Helpers 
// TODO temp, make inputType enum
func GetInput (inputType: String = "CMD") -> [String] {
  if (inputType == "CMD") {
    return cli.Input()
  } else if (inputType == "FILE") {
    let lines = FileHandler.processFile(at: "exampleFile.txt")
    return lines
  } else {
    print("Enter the input")
    return [""]  
  }
}

