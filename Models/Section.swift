import Foundation

class Section: Codable, Identifiable {
    let id: UUID
    let name: String
    var foodItems: [FoodItem]

    init(name: String) {
        self.name = name
        self.id = UUID()
        self.foodItems = []
    }
}