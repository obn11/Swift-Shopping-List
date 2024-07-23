import Foundation

class ShoppingListManager {
  var input: [String]
  var foodRequest: [FoodItemView]
  var supermarketDictionary: Supermarket
  var currentTrip: Trip

  init (supermarketDictionary: Supermarket) {
    self.input = []
    self.foodRequest = []
    self.currentTrip = Trip()
    self.supermarketDictionary = supermarketDictionary
  }

  // Pre processing to seporate food and quantity
  func ProcessInput() {
    for food in input {
      // Doesn't work with foods starting with x TODO regex
      let temp: [String] = food.components(separatedBy: " x")
      let quanity = temp.count > 1 ? Int(temp[1]) : 1 
      let foodItem = FoodItemView(name: temp[0], quantity: quanity)
     foodRequest.append(foodItem)
    }
  }

  func MapFoodToCategory() {
    for food in foodRequest {
      var foodFound = false;
      
      for aisle in supermarketDictionary.aisles {
        for category in aisle.categories {
          for foodItem in category.foodItems {
            if food.name == foodItem.name {
              ForceAddToTrip(aisle: aisle, category: category, foodItem: food)
              foodFound = true
            }
          }
        }
      }
      if !foodFound {
        currentTrip.unsorted.append(food)
      }
    }
  }

  // Helpers
  private func ForceAddToTrip(aisle: Aisle, category: Category, foodItem: FoodItemView) {
    guard let aisleView = currentTrip.aisles.first(where: { $0.name == aisle.name }) else {
      let categoryView = CategoryView(name: category.name, foodItems: [foodItem])
      let aisleView = AisleView(number: aisle.number, name: aisle.name, categories: [categoryView])
      currentTrip.aisles.append(aisleView)
      return
    }
    guard let categoryView = aisleView.categories.first(where: { $0.name == category.name }) else {
      let categoryView = CategoryView(name: category.name, foodItems: [foodItem])
      aisleView.categories.append(categoryView)
      return 
    }
    categoryView.foodItems.append(foodItem)
  }
  
  // For Debug
  private func LogFoodList() {
    for food in foodRequest {
      print(food.name)
      print(food.quantity)
    }
  }
}