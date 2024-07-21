import Foundation

struct FoodItem: Codable, Identifiable {
    var id: UUID? = UUID()
    let name: String
}