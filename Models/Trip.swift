import Foundation

struct Trip: Codable, Identifiable {
    let id: UUID
    var foodItems: [FoodToGet]
    let date: Date
}