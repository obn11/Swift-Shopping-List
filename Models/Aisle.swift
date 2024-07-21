class Aisle: Codable {
    let number: Int
    let name: String
    let sections: [Section]

    init(number: Int, name: String, sections: [Section]) {
        self.number = number
        self.name = name
        self.sections = sections
    }
}