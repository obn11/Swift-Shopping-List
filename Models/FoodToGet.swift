import Foundation

struct FoodToGet: Codable, Identifiable {
    var id: UUID? = UUID()
    let foodItem: FoodItem
    var quantity: Int
}