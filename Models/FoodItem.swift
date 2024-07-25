import Foundation

struct voFoodItem: Hashable {
    let name: String
    let category: String
}

class FoodItemView: Codable, Identifiable {
    var id: UUID
    let name: String

    init(_ name: String) {
        self.id = UUID()
        self.name = name
    }
}