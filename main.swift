import Foundation

func Run () {
  let db = db()
  db.seed()
  //db.log()
  let manager = ShoppingListManager(with: db)
  manager.request = GetInput(inputType: "FILE")
  manager.ProcessRequest()
  
  // Use a semaphore to wait for the async operation to complete
  let semaphore = DispatchSemaphore(value: 0)

  Task {
    await manager.ProcessUnsorted()
    semaphore.signal()
  }

  // Wait for the async task to complete
  semaphore.wait()

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
    let lines = FileReader.processFile(at: "exampleFile.txt")
    return lines
  } else {
    print("Enter the input")
  }
  return [""]
}

