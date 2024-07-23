import Foundation

func Run () {
  let db = db()
  db.seed()
  db.log()
  let manager = ShoppingListManager(supermarketDictionary: db.supermarket)
  manager.input = GetInput(inputType: "CMD")
  manager.ProcessInput()
  manager.MapFoodToSection()
  manager.currentTrip.log()
}

Run()

// Helpers 
// TODO temp, make inputType enum
func GetInput (inputType: String = "CMD") -> [String] {
  if (inputType == "CMD") {
    return cli.Input()
  } else if (inputType == "FILE") {
    print("Enter the file path")
  } else {
    print("Enter the input")
  }
  return [""]
}