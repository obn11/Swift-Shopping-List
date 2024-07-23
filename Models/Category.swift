import Foundation

struct Category {
    let name: String
    var foodItems: [FoodItem]

    init(name: String) {
        self.name = name
        self.foodItems = []
    }
}

class CategoryView: Codable, Identifiable {
    let id: UUID
    let name: String
    var foodItems: [FoodItemView]

    init(name: String) {
        self.id = UUID()
        self.name = name
        self.foodItems = []
    }

    init(name: String, foodItems: [FoodItemView]) {
        self.id = UUID()
        self.name = name
        self.foodItems = foodItems
    }

    init(category: Category) {
        self.id = UUID()
        self.name = category.name
        self.foodItems = category.foodItems.map(FoodItemView.init)
    }
}