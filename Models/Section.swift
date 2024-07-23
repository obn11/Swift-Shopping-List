import Foundation

struct Section {
    let name: String
    var foodItems: [FoodItem]

    init(name: String) {
        self.name = name
        self.foodItems = []
    }
}

class SectionView: Codable, Identifiable {
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

    init(section: Section) {
        self.id = UUID()
        self.name = section.name
        self.foodItems = section.foodItems.map(FoodItemView.init)
    }
}