import Foundation

class ShoppingListManager {
  var input: [String]
  var foodRequest: [FoodItemView]
  var db: db
  var currentTrip: Trip

  init (with db: db) {
    self.input = []
    self.foodRequest = []
    self.currentTrip = Trip()
    self.db = db
  }

  // Porbable refactor
  // Pre processing to seporate food and quantity
  func ProcessInput() {
    for food in input {
      let temp: [String] = food.components(separatedBy: " x")
      let quanity = temp.count > 1 ? Int(temp[1]) : 1 
      let foodItem = FoodItemView(temp[0], quantity: quanity)
     foodRequest.append(foodItem)
    }
  }

  func MapFoodToCategory() {
    for food in foodRequest {
      // TODO normalize etc 
      if let foody = db.foodDictionary[Utils.normalize(food.name)]  {
        if let category = db.categoryDictionary[foody.category] {
          ForceAddToTrip(aisle: category.aisle, category: category, foodItem: food)
          continue
        }
      }
      let foody = FoodItemView(food.name, quantity: 1)
      currentTrip.unsorted.append(foody)
    }
  }

  // Helpers
  // TODO 
  private func ForceAddToTrip(aisle: voAisle, category: voCategory, foodItem: FoodItemView) {
    print("here")
    guard let aisleView = currentTrip.aisles.first(where: { $0.name == aisle.name }) else {
      let categoryView = CategoryView(category.name, with: [foodItem])
      let aisleView = AisleView(aisle.number, aisle.name, with: [categoryView])
      currentTrip.aisles.append(aisleView)
      return
    }
    guard let categoryView = aisleView.categories.first(where: { $0.name == category.name }) else     {
      let categoryView = CategoryView(category.name, with: [foodItem])
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