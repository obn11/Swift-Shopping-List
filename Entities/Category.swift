import Foundation

struct voCategory: Hashable {
    let name: String
    var aisle: voAisle
}

class CategoryView: Codable, Identifiable {
    let id: UUID
    let name: String
    var foodItems: [FoodItemView]

    init(_ name: String, with foodItems: [FoodItemView]? = []) {
        self.id = UUID()
        self.name = name
        self.foodItems = foodItems ?? []
    }
}