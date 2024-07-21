import Foundation

struct FoodToGet: Codable, Identifiable {
    let id: UUID
    let foodItem: FoodItem
    var quantity: Int
}