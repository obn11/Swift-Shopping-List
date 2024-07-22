import Foundation

class Trip: Codable, Identifiable {
    let id: UUID
    var foodItems: [FoodToGet]
    let date: Date

    init (foodItems: [FoodToGet]) {
        self.id = UUID()
        self.foodItems = foodItems
        date = Date()
    }
}