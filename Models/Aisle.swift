import Foundation

class Aisle {
    let number: Int
    let name: String
    var sections: [Section]

    init(number: Int, name: String) {
        self.number = number
        self.name = name
        self.sections = []
    }
}

class AisleView: Codable, Identifiable {
    var id: UUID
    let number: Int
    let name: String
    var sections: [SectionView]

    init(number: Int, name: String) {
        self.id = UUID()
        self.number = number
        self.name = name
        self.sections = []
    }

    init(number: Int, name: String, sections: [SectionView]) {
        self.id = UUID()
        self.number = number
        self.name = name
        self.sections = sections
    }

    init(aisle: Aisle) {
        self.id = UUID()
        self.number = aisle.number
        self.name = aisle.name
        self.sections = aisle.sections.map(SectionView.init)
    }
}