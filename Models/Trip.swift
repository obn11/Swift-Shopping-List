import Foundation

class Trip: Codable, Identifiable {
    let id: UUID
    var aisles: [AisleView]
    let date: Date
    var unsorted: [String]

    init () {
        self.id = UUID()
        self.aisles = []
        self.date = Date()
        self.unsorted = []
    }

    func Log() {
        print(self.ToString())
    }

    func ToString() -> String {
        var output: [String] = []
        for aisle in self.aisles.sorted(by: { $0.number < $1.number }) {
            let aisleString = (aisle.number > 0 && aisle.number.rounded() == aisle.number) ?
                "Aisle \(String(Int(aisle.number))): \(aisle.name)" : 
                "\(aisle.name)"
            output.append(aisleString)
            for category in aisle.categories {
                output.append("  > \(category.name)")
                for food in category.foodItems {
                    output.append("    \(food.name) \(food.note ?? "")")
                }
            }
            output.append("")
        }
        
        return output.joined(separator:"\n")
    }
}