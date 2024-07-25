import Foundation

struct voFoodItem: Hashable {
    let name: String
    let category: String
}

class FoodItemView: Codable, Identifiable {
    var id: UUID
    let name: String
    let quantity: Int

    init(_ name: String, quantity: Int?) {
        self.id = UUID()
        self.name = name
        self.quantity = quantity ?? 1
    }
}