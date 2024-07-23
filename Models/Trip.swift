import Foundation

struct Supermarket {
    var aisles: [Aisle]

    init () {
        self.aisles = []
    }
}

class Trip: Codable, Identifiable {
    let id: UUID
    var aisles: [AisleView]
    let date: Date
    var unsorted: [FoodItemView]

    init () {
        self.id = UUID()
        self.aisles = []
        self.date = Date()
        self.unsorted = []
    }

    func log() {
        for aisle in self.aisles {
            print("Aisle \(aisle.number): \(aisle.name)")
            for section in aisle.sections {
                print("  > \(section.name)")
                for food in section.foodItems {
                    print("    [] \(food.name)")
                }
            }
            print()
        }

        LogUnsortedFood()
    }


    private func LogUnsortedFood() {
    print("Unsorted")
        for food in self.unsorted {
            print("- " + food.name + " x" + String(food.quantity))
        }
    }
}