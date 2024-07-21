import Foundation

class FoodItem: Codable, Identifiable {
    var id: UUID? = UUID()
    let name: String

    init(name: String) {
        self.name = name
    }
}