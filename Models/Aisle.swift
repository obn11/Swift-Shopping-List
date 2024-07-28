import Foundation

struct voAisle: Hashable {
    let number: Int
    let name: String
}

class AisleView: Codable, Identifiable {
    var id: UUID
    let number: Int
    let name: String
    var categories: [CategoryView]

    init(_ number: Int, _ name: String, with categories: [CategoryView]?) {
        self.id = UUID()
        self.number = number
        self.name = name
        self.categories = categories ?? []
    }

    init(_ aisle: voAisle) {
        self.id = UUID()
        self.number = aisle.number
        self.name = aisle.name
        self.categories = []
    }
}