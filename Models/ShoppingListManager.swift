import Foundation

class ShoppingListManager {
  var request: [String]
  var db: db
  var currentTrip: Trip

  init (with db: db) {
    self.request = []
    self.currentTrip = Trip()
    self.db = db
  }

  // Porbable refactor
  // Pre processing to seporate food and quantity
  func ProcessRequest() {
    for food in request {
      // TODO normalize etc 
      if let foodLookup = match(food)  {
        if let category = db.categoryDictionary[foodLookup.category] {
          ForceAddToTrip(aisle: category.aisle, category: category, foodItem: FoodItemView(food))
          continue
        }
      }
      let foody = FoodItemView(food)
      currentTrip.unsorted.append(foody)
    }
  }

  func match(_ food: String) -> voFoodItem? {
    if let foodItem = db.foodDictionary[Utils.normalize(food)] {
      return foodItem
    }

    // Check for partial match
    for (key, foodItem) in db.foodDictionary {
      if key.contains(food) || food.contains(key) {
        return foodItem
      }
    }
    // TOOD fuzzy Levenshtein distance
    return nil
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
}