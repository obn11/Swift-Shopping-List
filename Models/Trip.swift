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

    // Todo order by aisle number
    func Log() {
        print(self.ToString())
    }

    func ToString() -> String {
        var output: [String] = []
        for aisle in self.aisles {
            output.append("Aisle \(aisle.number): \(aisle.name)")
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