class Aisle: Codable {
    let number: Int
    let name: String
    var sections: [Section]

    init(number: Int, name: String) {
        self.number = number
        self.name = name
        self.sections = []
    }
}