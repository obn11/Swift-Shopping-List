import Foundation

func Run () {
  let db = db()
  db.seed()
  //db.log()
  //print(db.foodDictionary[Utils.normalize("Banana")]!.name)
  let manager = ShoppingListManager(with: db)
  manager.request = GetInput(inputType: "CMD")
  manager.ProcessRequest()
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