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

  func MapFoodToSection() {
    for food in foodRequest {
      var foodFound = false;
      
      for aisle in supermarketDictionary.aisles {
        for section in aisle.sections {
          for foodItem in section.foodItems {
            if food.name == foodItem.name {
              ForceAddToTrip(aisle: aisle, section: section, foodItem: food)
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
  private func ForceAddToTrip(aisle: Aisle, section: Section, foodItem: FoodItemView) {
    guard let aisleView = currentTrip.aisles.first(where: { $0.name == aisle.name }) else {
      let sectionView = SectionView(name: section.name, foodItems: [foodItem])
      let aisleView = AisleView(number: aisle.number, name: aisle.name, sections: [sectionView])
      currentTrip.aisles.append(aisleView)
      return
    }
    guard let sectionView = aisleView.sections.first(where: { $0.name == section.name }) else {
      let sectionView = SectionView(name: section.name, foodItems: [foodItem])
      aisleView.sections.append(sectionView)
      return 
    }
    sectionView.foodItems.append(foodItem)
  }
  
  // For Debug
  private func LogFoodList() {
    for food in foodRequest {
      print(food.name)
      print(food.quantity)
    }
  }
}