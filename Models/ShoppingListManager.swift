import Foundation

class ShoppingListManager {
  var input: [String] = []
  var foodList: [FoodToGet] = []
  var currentTrip: Trip?

  func createTrip(from items: [String]) {
    // Implementation
  }

  func ProcessInput() {
    for food in input {
      // Doesn't work with foods starting with x
      let temp: [String] = food.components(separatedBy: " x")
      let name = temp[0]
      let quanity = temp.count > 1 ? Int(temp[1]) ?? 1  : 1 
      let foodItem = FoodToGet(foodItem: FoodItem(name: name), quantity: quanity)
      foodList.append(foodItem)
    }
  }
}