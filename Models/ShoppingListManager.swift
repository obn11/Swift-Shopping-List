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

  func ProcessRequest() {
    for food in request {
      if let foodLookup = match(food)  {
        if let category = db.categoryDictionary[foodLookup.category] {
          ForceAddToTrip(aisle: category.aisle, category: category, foodItem: FoodItemView(food))
          continue
        }
      }
      currentTrip.unsorted.append(food)
    }
  }

  func ProcessUnsorted() {
    do {
      try iAiCaller.categorizeFoods(uncategorizedFoods: currentTrip.unsorted, categories: db.categoryDictionary.values.map { $0.name })
    } catch {
      print("Error: \(error)")
    }
  }

  // Helpers

  // PROJECT NOTE: Several processing functions are not used in the final version of the app. 
  // This is to bias towards sending to the AI. This is counter the goal of processing the 
  // majority of words locally and only sending edge cases to the AI.
  // However, for a smaller project with a small "db" this is a compromise. 
  // potential improvement functions include:
  // Levenshtein Distance: for typos
  // Trigram Matching: for food names that are similar but not identical
  // Extras for experts
  // TF-IDF (Term Frequency-Inverse Document Frequency): Weight by importance in the context. <= Maybe not useful here?
  // Word Embeddings: Word2Vec for semantic relationships.
  private func match(_ food: String) -> voFoodItem? {
    var food = food
    if food.starts(with: "- [x] ") {
      food = String(food.dropFirst(6))
    }
    
    if let foodItem = db.foodDictionary[Utils.normalize(food)] {
      // print (food + " matches to " + foodItem.name)
      return foodItem
    }

    // Check for partial match
    for (key, foodItem) in db.foodDictionary {
      if key.contains(food) || food.contains(key) {
        print (food + " matches to " + foodItem.name)
        return foodItem
      }
    }

    // Match category 
    for (key, category) in db.categoryDictionary {
      if key.contains(food) || food.contains(key) {
        // print (food + " matches to category: " + category.name)
        // Goofy but we just need any food item in the category
        return voFoodItem(name: "", category: category.name)
      }
    }

    return nil
  }

  private func ForceAddToTrip(aisle: voAisle, category: voCategory, foodItem: FoodItemView) {
    guard let aisleView = currentTrip.aisles.first(where: { $0.name == aisle.name }) else {
      let categoryView = CategoryView(category.name, with: [foodItem])
      let aisleView = AisleView(aisle.number, aisle.name, with: [categoryView])
      currentTrip.aisles.append(aisleView)
      return
    }
    guard let categoryView = aisleView.categories.first(where: { $0.name == category.name }) else {
      let categoryView = CategoryView(category.name, with: [foodItem])
      aisleView.categories.append(categoryView)
      return 
    }
    categoryView.foodItems.append(foodItem)
  }
}