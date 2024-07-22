import Foundation

// This will be represented as a proper db eventually
class Supermarket {
    var aisles: [Aisle]

    // Seed Data
    init() {
        self.aisles = []
    }

    func seed() {

        // Ailes
        self.aisles.append(Aisle(number: 1, name: "Fresh Produce & Deli"))
        self.aisles.append(Aisle(number: 2, name: "Dairy & Refrigerated"))
        self.aisles.append(Aisle(number: 3, name: "Frozen Foods"))
        self.aisles.append(Aisle(number: 4, name: "Pantry Staples"))
        self.aisles.append(Aisle(number: 5, name: "Snacks & Beverages"))
        self.aisles.append(Aisle(number: 6, name: "Alcohol"))
        self.aisles.append(Aisle(number: 7, name: "Household & Personal Care"))
        self.aisles.append(Aisle(number: 8, name: "Miscellaneous"))

        // Sections
        addSectionToAisle(aisleName: "Fresh Produce & Deli", sectionName: "Fruit & Vegetables")
        addSectionToAisle(aisleName: "Fresh Produce & Deli", sectionName: "Deli, Salads & Cooked Meats")
        addSectionToAisle(aisleName: "Fresh Produce & Deli", sectionName: "Bakery")
        addSectionToAisle(aisleName: "Fresh Produce & Deli", sectionName: "Seafood")
        addSectionToAisle(aisleName: "Fresh Produce & Deli", sectionName: "Butchery")
        
        addSectionToAisle(aisleName: "Dairy & Refrigerated", sectionName: "Dairy & Eggs")
        addSectionToAisle(aisleName: "Dairy & Refrigerated", sectionName: "Cheese")
        addSectionToAisle(aisleName: "Dairy & Refrigerated", sectionName: "Ready to Cook")
        addSectionToAisle(aisleName: "Dairy & Refrigerated", sectionName: "Ready to Heat")
        
        addSectionToAisle(aisleName: "Frozen Foods", sectionName: "Frozen Foods")
        addSectionToAisle(aisleName: "Frozen Foods", sectionName: "Desserts")

        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Canned & Prepared Foods")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Pasta, Rice & Noodles")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Baking Supplies & Sugar")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Spices & Seasonings")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Jams, Honey & Spreads")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Breakfast Cereals")
        addSectionToAisle(aisleName: "Pantry Staples", sectionName: "Sauces, Stock & Marinades")

        addSectionToAisle(aisleName: "Snacks & Beverages", sectionName: "Biscuits & Crackers")
        addSectionToAisle(aisleName: "Snacks & Beverages", sectionName: "Confectionery")
        addSectionToAisle(aisleName: "Snacks & Beverages", sectionName: "Snack Foods")
        addSectionToAisle(aisleName: "Snacks & Beverages", sectionName: "Cold Drinks")
        addSectionToAisle(aisleName: "Snacks & Beverages", sectionName: "Hot Drinks")

        addSectionToAisle(aisleName: "Alcohol", sectionName: "Beer & Cider")
        addSectionToAisle(aisleName: "Alcohol", sectionName: "Wine")

        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Cleaning Products")
        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Laundry")
        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Household")
        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Beauty & Grooming")
        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Health & Wellness")
        addSectionToAisle(aisleName: "Household & Personal Care", sectionName: "Baby Care")

        addSectionToAisle(aisleName: "Miscellaneous", sectionName: "Pet Supplies")
        addSectionToAisle(aisleName: "Miscellaneous", sectionName: "World Foods")
        addSectionToAisle(aisleName: "Miscellaneous", sectionName: "Stationery & Entertainment")
        addSectionToAisle(aisleName: "Miscellaneous", sectionName: "Garage & Outdoor")
        addSectionToAisle(aisleName: "Miscellaneous", sectionName: "Bulk & Loose Foods")

        addFoodToSection(sectionName: "Fruit & Vegetables", foodName: "Banana")
        addFoodToSection(sectionName: "Fruit & Vegetables", foodName: "Broccoli")
        addFoodToSection(sectionName: "Fruit & Vegetables", foodName: "Carrots")
        addFoodToSection(sectionName: "Deli, Salads & Cooked Meats", foodName: "Sliced Ham")
        addFoodToSection(sectionName: "Deli, Salads & Cooked Meats", foodName: "Potato Salad")
        addFoodToSection(sectionName: "Bakery", foodName: "Sourdough Bread")
        addFoodToSection(sectionName: "Bakery", foodName: "Croissants")
        addFoodToSection(sectionName: "Seafood", foodName: "Salmon Fillet")
        addFoodToSection(sectionName: "Seafood", foodName: "Shrimp")
        addFoodToSection(sectionName: "Butchery", foodName: "Ground Beef")
        addFoodToSection(sectionName: "Butchery", foodName: "Chicken Breast")
        addFoodToSection(sectionName: "Dairy & Eggs", foodName: "Milk")
        addFoodToSection(sectionName: "Dairy & Eggs", foodName: "Greek Yogurt")
        addFoodToSection(sectionName: "Cheese", foodName: "Cheddar")
        addFoodToSection(sectionName: "Cheese", foodName: "Mozzarella")
        addFoodToSection(sectionName: "Ready to Cook", foodName: "Marinated Chicken Skewers")
        addFoodToSection(sectionName: "Ready to Cook", foodName: "Seasoned Salmon")
        addFoodToSection(sectionName: "Ready to Heat", foodName: "Microwave Lasagna")
        addFoodToSection(sectionName: "Ready to Heat", foodName: "Chicken Curry")
        addFoodToSection(sectionName: "Frozen Foods", foodName: "Frozen Peas")
        addFoodToSection(sectionName: "Frozen Foods", foodName: "Frozen Pizza")
        addFoodToSection(sectionName: "Desserts", foodName: "Ice Cream")
        addFoodToSection(sectionName: "Desserts", foodName: "Chocolate Pudding")
        addFoodToSection(sectionName: "Canned & Prepared Foods", foodName: "Canned Tomatoes")
        addFoodToSection(sectionName: "Canned & Prepared Foods", foodName: "Baked Beans")
        addFoodToSection(sectionName: "Pasta, Rice & Noodles", foodName: "Spaghetti")
        addFoodToSection(sectionName: "Pasta, Rice & Noodles", foodName: "Basmati Rice")
        addFoodToSection(sectionName: "Baking Supplies & Sugar", foodName: "All-Purpose Flour")
        addFoodToSection(sectionName: "Baking Supplies & Sugar", foodName: "Granulated Sugar")
        addFoodToSection(sectionName: "Spices & Seasonings", foodName: "Ground Cinnamon")
        addFoodToSection(sectionName: "Spices & Seasonings", foodName: "Black Peppercorns")
        addFoodToSection(sectionName: "Jams, Honey & Spreads", foodName: "Strawberry Jam")
        addFoodToSection(sectionName: "Jams, Honey & Spreads", foodName: "Peanut Butter")
        addFoodToSection(sectionName: "Breakfast Cereals", foodName: "Cornflakes")
        addFoodToSection(sectionName: "Breakfast Cereals", foodName: "Oatmeal")
        addFoodToSection(sectionName: "Sauces, Stock & Marinades", foodName: "Tomato Ketchup")
        addFoodToSection(sectionName: "Sauces, Stock & Marinades", foodName: "Soy Sauce")
        addFoodToSection(sectionName: "Biscuits & Crackers", foodName: "Chocolate Chip Cookies")
        addFoodToSection(sectionName: "Biscuits & Crackers", foodName: "Saltine Crackers")
        addFoodToSection(sectionName: "Confectionery", foodName: "Milk Chocolate Bar")
        addFoodToSection(sectionName: "Confectionery", foodName: "Gummy Bears")
        addFoodToSection(sectionName: "Snack Foods", foodName: "Potato Chips")
        addFoodToSection(sectionName: "Snack Foods", foodName: "Pretzels")
        addFoodToSection(sectionName: "Cold Drinks", foodName: "Cola")
        addFoodToSection(sectionName: "Cold Drinks", foodName: "Orange Juice")
        addFoodToSection(sectionName: "Hot Drinks", foodName: "Coffee Beans")
        addFoodToSection(sectionName: "Hot Drinks", foodName: "Green Tea")
        addFoodToSection(sectionName: "Beer & Cider", foodName: "Craft IPA")
        addFoodToSection(sectionName: "Beer & Cider", foodName: "Apple Cider")
        addFoodToSection(sectionName: "Wine", foodName: "Cabernet Sauvignon")
        addFoodToSection(sectionName: "Wine", foodName: "Chardonnay")
        addFoodToSection(sectionName: "Cleaning Products", foodName: "All-Purpose Cleaner")
        addFoodToSection(sectionName: "Cleaning Products", foodName: "Dish Soap")
        addFoodToSection(sectionName: "Laundry", foodName: "Laundry Detergent")
        addFoodToSection(sectionName: "Laundry", foodName: "Fabric Softener")
        addFoodToSection(sectionName: "Household", foodName: "Paper Towels")
        addFoodToSection(sectionName: "Household", foodName: "Trash Bags")
        addFoodToSection(sectionName: "Beauty & Grooming", foodName: "Shampoo")
        addFoodToSection(sectionName: "Beauty & Grooming", foodName: "Toothpaste")
        addFoodToSection(sectionName: "Health & Wellness", foodName: "Multivitamins")
        addFoodToSection(sectionName: "Health & Wellness", foodName: "Bandages")
        addFoodToSection(sectionName: "Baby Care", foodName: "Diapers")
        addFoodToSection(sectionName: "Baby Care", foodName: "Baby Formula")
        addFoodToSection(sectionName: "Pet Supplies", foodName: "Dog Food")
        addFoodToSection(sectionName: "Pet Supplies", foodName: "Cat Litter")
        addFoodToSection(sectionName: "World Foods", foodName: "Sushi Rice")
        addFoodToSection(sectionName: "World Foods", foodName: "Salsa")
        addFoodToSection(sectionName: "Stationery & Entertainment", foodName: "Notebooks")
        addFoodToSection(sectionName: "Stationery & Entertainment", foodName: "Pens")
        addFoodToSection(sectionName: "Garage & Outdoor", foodName: "Charcoal")
        addFoodToSection(sectionName: "Garage & Outdoor", foodName: "Lighter Fluid")
        addFoodToSection(sectionName: "Bulk & Loose Foods", foodName: "Almonds")
        addFoodToSection(sectionName: "Bulk & Loose Foods", foodName: "Trail Mix")
        addFoodToSection(sectionName: "Fruit & Vegetables", foodName: "Apples")
        addFoodToSection(sectionName: "Fruit & Vegetables", foodName: "Spinach")
        addFoodToSection(sectionName: "Deli, Salads & Cooked Meats", foodName: "Roast Beef")
        addFoodToSection(sectionName: "Deli, Salads & Cooked Meats", foodName: "Coleslaw")
        addFoodToSection(sectionName: "Bakery", foodName: "Bagels")
        addFoodToSection(sectionName: "Bakery", foodName: "Cinnamon Rolls")
        addFoodToSection(sectionName: "Seafood", foodName: "Tuna Steak")
        addFoodToSection(sectionName: "Seafood", foodName: "Mussels")
        addFoodToSection(sectionName: "Butchery", foodName: "Pork Chops")
        addFoodToSection(sectionName: "Butchery", foodName: "Lamb Shanks")
        addFoodToSection(sectionName: "Dairy & Eggs", foodName: "Butter")
        addFoodToSection(sectionName: "Dairy & Eggs", foodName: "Free-Range Eggs")
        addFoodToSection(sectionName: "Cheese", foodName: "Brie")
        addFoodToSection(sectionName: "Cheese", foodName: "Gouda")
        addFoodToSection(sectionName: "Ready to Cook", foodName: "Stuffed Bell Peppers")
        addFoodToSection(sectionName: "Ready to Cook", foodName: "Seasoned Pork Tenderloin")
        addFoodToSection(sectionName: "Ready to Heat", foodName: "Beef Stroganoff")
        addFoodToSection(sectionName: "Ready to Heat", foodName: "Vegetable Stir Fry")
        addFoodToSection(sectionName: "Frozen Foods", foodName: "Frozen Berries")
        addFoodToSection(sectionName: "Frozen Foods", foodName: "Fish Fingers")
        addFoodToSection(sectionName: "Desserts", foodName: "Tiramisu")
        addFoodToSection(sectionName: "Desserts", foodName: "Cheesecake")
        addFoodToSection(sectionName: "Canned & Prepared Foods", foodName: "Canned Tuna")
        addFoodToSection(sectionName: "Canned & Prepared Foods", foodName: "Canned Corn")
    }
        
     
        
    // Function to add a section to a specific aisle
    func addSectionToAisle(aisleName: String, sectionName: String) {
        if let aisle = aisles.first(where: { $0.name == aisleName }) {
            let section = Section(name: sectionName)
            aisle.sections.append(section)
            return
        }
        print("Aisle not found: \(aisleName)")
    }

    func addFoodToSection(sectionName: String, foodName: String) {
        for aisle in aisles {
            if let section = aisle.sections.first(where: { $0.name == sectionName }) {
                let food = FoodItem(name: foodName)
                section.foodItems.append(food)
                return
            }
        }
        print("Section not found: \(sectionName)")
    }

    // To print the result and verify
    func log() {
        for aisle in self.aisles {
            print("Aisle \(aisle.number): \(aisle.name)")
            for section in aisle.sections {
                print("  - \(section.name)")
                for food in section.foodItems {
                    print("    - \(food.name)")
                }
            }
            print()
        }
    }
}

