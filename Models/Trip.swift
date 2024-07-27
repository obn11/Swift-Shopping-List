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
        for aisle in self.aisles {
            print("Aisle \(aisle.number): \(aisle.name)")
            for category in aisle.categories {
                print("  > \(category.name)")
                for food in category.foodItems {
                    print("    \(food.name) \(food.note ?? "")")
                }
            }
            print()
        }
    }

    private func LogUnsortedFood() {
        print("Unsorted")
        for food in self.unsorted {
            print(food.dropFirst(6))
        }
    }
}