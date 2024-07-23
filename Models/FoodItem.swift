import Foundation

struct FoodItem {
    let name: String

    init(name: String) {
        self.name = name
    }
}

class FoodItemView: Codable, Identifiable {
    var id: UUID
    let name: String
    let quantity: Int

    init(name: String, quantity: Int?) {
        self.id = UUID()
        self.name = name
        self.quantity = quantity ?? 1
    }

    init(foodItem: FoodItem) {
        self.id = UUID()
        self.name = foodItem.name
        self.quantity =  1
    }

    init(foodItem: FoodItem, quantity: Int) {
        self.id = UUID()
        self.name = foodItem.name
        self.quantity = quantity
    }
}