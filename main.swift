import Foundation

// TODO temp, make inputType enum
func Run (inputType: String = "CMD") {
  print("hello")
  let manager = ShoppingListManager()
  if (inputType == "CMD") {
    manager.input = cli.Input()
  } else if (inputType == "FILE") {
    print("Enter the file path")
  } else {
    print("Enter the input")
  }
  manager.ProcessInput()
}

Run(inputType: "CMD")
