import Foundation

struct voFoodItem: Hashable, Codable  {
    let name: String
    let category: String
    let note: String?
    
    init(_ name: String, _ category: String, note: String? = nil) {
        self.name = name
        self.category = category
        self.note = note
    }

    var normalName:String {
        Utils.normalize(self.name)
    }

    enum CodingKeys: String, CodingKey {
        case name = "food_item"
        case category
        case note
    }
}

class FoodItemView: Codable, Identifiable {
    var id: UUID
    let name: String
    let note: String?

    init(_ name: String, note: String? = nil) {
        self.id = UUID()
        self.name = name
        self.note = note
    }

    var normalName:String {
        get {
            return Utils.normalize(self.name)
        }
    }
}