import Foundation

struct Section: Codable, Identifiable {
    let id: UUID
    let name: String
    var foodItems: [FoodItem]
}