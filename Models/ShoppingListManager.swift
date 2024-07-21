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
      // Doesn't work with foods starting with x TODO regex
      let temp: [String] = food.components(separatedBy: " x")
      let name = temp[0]
      let quanity = temp.count > 1 ? Int(temp[1]) ?? 1  : 1 
      let foodItem = FoodToGet(name: name, quantity: quanity)
      foodList.append(foodItem)
    }
    LogFoodList()
  }


  // For Debug
  func LogFoodList() {
    for food in foodList {
      print(food.foodItem.name)
      print(food.quantity)
    }
  }
}