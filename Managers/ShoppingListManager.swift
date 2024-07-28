import Foundation

class ShoppingListManager {
  private let db: Database
  private let outputHandler: OutputHandler
  var currentTrip: Trip

  init (database: Database, outputHandler: OutputHandler) {
    self.db = database
    self.outputHandler = outputHandler
    self.currentTrip = Trip()
  }

  func processInput(_ input: [String]) {
    input.forEach { food in
      if let category = matchToCategory(food).flatMap({db.categoryDictionary[$0]}) {
        ForceAppendToTrip(aisle: category.aisle, category: category, foodItem: FoodItemView(food))
      } else {
        currentTrip.unsorted.append(food)
      }
    }
  }

  func processUnsorted() {
    let unsortedFoods = currentTrip.unsorted.map { Utils.normalize($0) }
    let categories = db.categoryDictionary.values.map { $0.name }
    AiCategorizer.classifyUnmatchedItems(
      uncategorizedFoods: unsortedFoods,
      categories: categories,
      completion: { [weak self] response in
        guard let self = self else { return }
        self.addResponseToTrip(response: response)
        self.outputHandler.output(self.currentTrip.ToString()) 
      }
    )
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

  private func matchToCategory(_ food: String) -> String? {
    let normalizedFood = Utils.normalize(food)

    return db.foodDictionary[normalizedFood]?.category
      // Partial Match
      ?? db.foodDictionary
        .first(where: { $0.key.contains(food) || food.contains($0.key) })?
        .value.category
      // Category Partial Match
      ?? db.categoryDictionary
        .first(where: { $0.key.contains(food) || food.contains($0.key) })?
        .value.name
  }

  private func ForceAppendToTrip(aisle: voAisle, category: voCategory, foodItem: FoodItemView) {
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

  private func addResponseToTrip(response: [voFoodItem]) {
    for food in response {
      if let category = db.categoryDictionary[food.category] {
        let foodName = "- [x] \(food.name.capitalized) |AI|"
        ForceAppendToTrip(aisle: category.aisle, category: category, foodItem: FoodItemView(foodName, note: food.note))
        continue
      }
    }
  }
}