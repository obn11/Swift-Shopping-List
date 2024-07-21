import Foundation

struct FoodItem: Codable, Identifiable {
    let id: UUID
    let name: String
    let generality: Generality
}