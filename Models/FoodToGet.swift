import Foundation

class FoodToGet: Codable, Identifiable {
    var id: UUID
    let foodItem: FoodItem
    var quantity: Int

    init (name: String, quantity: Int) {
        self.id = UUID()
        self.foodItem = FoodItem(name: name)
        self.quantity = quantity
    }
}