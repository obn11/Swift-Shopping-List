import Foundation

class Aisle {
    let number: Int
    let name: String
    var categories: [Category]

    init(number: Int, name: String) {
        self.number = number
        self.name = name
        self.categories = []
    }
}

class AisleView: Codable, Identifiable {
    var id: UUID
    let number: Int
    let name: String
    var categories: [CategoryView]

    init(number: Int, name: String) {
        self.id = UUID()
        self.number = number
        self.name = name
        self.categories = []
    }

    init(number: Int, name: String, categories: [CategoryView]) {
        self.id = UUID()
        self.number = number
        self.name = name
        self.categories = categories
    }

    init(aisle: Aisle) {
        self.id = UUID()
        self.number = aisle.number
        self.name = aisle.name
        self.categories = aisle.categories.map(CategoryView.init)
    }
}