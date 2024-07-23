import Foundation

// This will be represented as a proper db eventually
class db {
    var supermarket: Supermarket

    // Seed Data
    init() {
        self.supermarket = Supermarket()
    }

    func seed() {

        // Ailes
        self.supermarket.aisles.append(Aisle(number: 1, name: "Fresh Produce & Deli"))
        self.supermarket.aisles.append(Aisle(number: 2, name: "Dairy & Refrigerated"))
        self.supermarket.aisles.append(Aisle(number: 3, name: "Frozen Foods"))
        self.supermarket.aisles.append(Aisle(number: 4, name: "Pantry Staples"))
        self.supermarket.aisles.append(Aisle(number: 5, name: "Snacks & Beverages"))
        self.supermarket.aisles.append(Aisle(number: 6, name: "Alcohol"))
        self.supermarket.aisles.append(Aisle(number: 7, name: "Household & Personal Care"))
        self.supermarket.aisles.append(Aisle(number: 8, name: "Miscellaneous"))

        // Categories
        addCategoryToAisle("Fresh Produce & Deli", "Fruit & Vegetables")
        addCategoryToAisle("Fresh Produce & Deli", "Deli, Salads & Cooked Meats")
        addCategoryToAisle("Fresh Produce & Deli", "Bakery")
        addCategoryToAisle("Fresh Produce & Deli", "Seafood")
        addCategoryToAisle("Fresh Produce & Deli", "Butchery")
        
        addCategoryToAisle("Dairy & Refrigerated", "Dairy & Eggs")
        addCategoryToAisle("Dairy & Refrigerated", "Cheese")
        addCategoryToAisle("Dairy & Refrigerated", "Ready to Cook")
        addCategoryToAisle("Dairy & Refrigerated", "Ready to Heat")
        
        addCategoryToAisle("Frozen Foods", "Frozen Foods")
        addCategoryToAisle("Frozen Foods", "Desserts")

        addCategoryToAisle("Pantry Staples", "Canned & Prepared Foods")
        addCategoryToAisle("Pantry Staples", "Pasta, Rice & Noodles")
        addCategoryToAisle("Pantry Staples", "Baking Supplies & Sugar")
        addCategoryToAisle("Pantry Staples", "Spices & Seasonings")
        addCategoryToAisle("Pantry Staples", "Jams, Honey & Spreads")
        addCategoryToAisle("Pantry Staples", "Breakfast Cereals")
        addCategoryToAisle("Pantry Staples", "Sauces, Stock & Marinades")

        addCategoryToAisle("Snacks & Beverages", "Biscuits & Crackers")
        addCategoryToAisle("Snacks & Beverages", "Confectionery")
        addCategoryToAisle("Snacks & Beverages", "Snack Foods")
        addCategoryToAisle("Snacks & Beverages", "Cold Drinks")
        addCategoryToAisle("Snacks & Beverages", "Hot Drinks")

        addCategoryToAisle("Alcohol", "Beer & Cider")
        addCategoryToAisle("Alcohol", "Wine")

        addCategoryToAisle("Household & Personal Care", "Cleaning Products")
        addCategoryToAisle("Household & Personal Care", "Laundry")
        addCategoryToAisle("Household & Personal Care", "Household")
        addCategoryToAisle("Household & Personal Care", "Beauty & Grooming")
        addCategoryToAisle("Household & Personal Care", "Health & Wellness")
        addCategoryToAisle("Household & Personal Care", "Baby Care")

        addCategoryToAisle("Miscellaneous", "Pet Supplies")
        addCategoryToAisle("Miscellaneous", "World Foods")
        addCategoryToAisle("Miscellaneous", "Stationery & Entertainment")
        addCategoryToAisle("Miscellaneous", "Garage & Outdoor")
        addCategoryToAisle("Miscellaneous", "Bulk & Loose Foods")

        addFoodToCategory("Fruit & Vegetables", "Banana")
        addFoodToCategory("Fruit & Vegetables", "Broccoli")
        addFoodToCategory("Fruit & Vegetables", "Carrots")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Sliced Ham")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Potato Salad")
        addFoodToCategory("Bakery", "Sourdough Bread")
        addFoodToCategory("Bakery", "Croissants")
        addFoodToCategory("Seafood", "Salmon Fillet")
        addFoodToCategory("Seafood", "Shrimp")
        addFoodToCategory("Butchery", "Ground Beef")
        addFoodToCategory("Butchery", "Chicken Breast")
        addFoodToCategory("Dairy & Eggs", "Milk")
        addFoodToCategory("Dairy & Eggs", "Greek Yogurt")
        addFoodToCategory("Cheese", "Cheddar")
        addFoodToCategory("Cheese", "Mozzarella")
        addFoodToCategory("Ready to Cook", "Marinated Chicken Skewers")
        addFoodToCategory("Ready to Cook", "Seasoned Salmon")
        addFoodToCategory("Ready to Heat", "Microwave Lasagna")
        addFoodToCategory("Ready to Heat", "Chicken Curry")
        addFoodToCategory("Frozen Foods", "Frozen Peas")
        addFoodToCategory("Frozen Foods", "Frozen Pizza")
        addFoodToCategory("Desserts", "Ice Cream")
        addFoodToCategory("Desserts", "Chocolate Pudding")
        addFoodToCategory("Canned & Prepared Foods", "Canned Tomatoes")
        addFoodToCategory("Canned & Prepared Foods", "Baked Beans")
        addFoodToCategory("Pasta, Rice & Noodles", "Spaghetti")
        addFoodToCategory("Pasta, Rice & Noodles", "Basmati Rice")
        addFoodToCategory("Baking Supplies & Sugar", "All-Purpose Flour")
        addFoodToCategory("Baking Supplies & Sugar", "Granulated Sugar")
        addFoodToCategory("Spices & Seasonings", "Ground Cinnamon")
        addFoodToCategory("Spices & Seasonings", "Black Peppercorns")
        addFoodToCategory("Jams, Honey & Spreads", "Strawberry Jam")
        addFoodToCategory("Jams, Honey & Spreads", "Peanut Butter")
        addFoodToCategory("Breakfast Cereals", "Cornflakes")
        addFoodToCategory("Breakfast Cereals", "Oatmeal")
        addFoodToCategory("Sauces, Stock & Marinades", "Tomato Ketchup")
        addFoodToCategory("Sauces, Stock & Marinades", "Soy Sauce")
        addFoodToCategory("Biscuits & Crackers", "Chocolate Chip Cookies")
        addFoodToCategory("Biscuits & Crackers", "Saltine Crackers")
        addFoodToCategory("Confectionery", "Milk Chocolate Bar")
        addFoodToCategory("Confectionery", "Gummy Bears")
        addFoodToCategory("Snack Foods", "Potato Chips")
        addFoodToCategory("Snack Foods", "Pretzels")
        addFoodToCategory("Cold Drinks", "Cola")
        addFoodToCategory("Cold Drinks", "Orange Juice")
        addFoodToCategory("Hot Drinks", "Coffee Beans")
        addFoodToCategory("Hot Drinks", "Green Tea")
        addFoodToCategory("Beer & Cider", "Craft IPA")
        addFoodToCategory("Beer & Cider", "Apple Cider")
        addFoodToCategory("Wine", "Cabernet Sauvignon")
        addFoodToCategory("Wine", "Chardonnay")
        addFoodToCategory("Cleaning Products", "All-Purpose Cleaner")
        addFoodToCategory("Cleaning Products", "Dish Soap")
        addFoodToCategory("Laundry", "Laundry Detergent")
        addFoodToCategory("Laundry", "Fabric Softener")
        addFoodToCategory("Household", "Paper Towels")
        addFoodToCategory("Household", "Trash Bags")
        addFoodToCategory("Beauty & Grooming", "Shampoo")
        addFoodToCategory("Beauty & Grooming", "Toothpaste")
        addFoodToCategory("Health & Wellness", "Multivitamins")
        addFoodToCategory("Health & Wellness", "Bandages")
        addFoodToCategory("Baby Care", "Diapers")
        addFoodToCategory("Baby Care", "Baby Formula")
        addFoodToCategory("Pet Supplies", "Dog Food")
        addFoodToCategory("Pet Supplies", "Cat Litter")
        addFoodToCategory("World Foods", "Sushi Rice")
        addFoodToCategory("World Foods", "Salsa")
        addFoodToCategory("Stationery & Entertainment", "Notebooks")
        addFoodToCategory("Stationery & Entertainment", "Pens")
        addFoodToCategory("Garage & Outdoor", "Charcoal")
        addFoodToCategory("Garage & Outdoor", "Lighter Fluid")
        addFoodToCategory("Bulk & Loose Foods", "Almonds")
        addFoodToCategory("Bulk & Loose Foods", "Trail Mix")
        addFoodToCategory("Fruit & Vegetables", "Apples")
        addFoodToCategory("Fruit & Vegetables", "Spinach")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Roast Beef")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Coleslaw")
        addFoodToCategory("Bakery", "Bagels")
        addFoodToCategory("Bakery", "Cinnamon Rolls")
        addFoodToCategory("Seafood", "Tuna Steak")
        addFoodToCategory("Seafood", "Mussels")
        addFoodToCategory("Butchery", "Pork Chops")
        addFoodToCategory("Butchery", "Lamb Shanks")
        addFoodToCategory("Dairy & Eggs", "Butter")
        addFoodToCategory("Dairy & Eggs", "Free-Range Eggs")
        addFoodToCategory("Cheese", "Brie")
        addFoodToCategory("Cheese", "Gouda")
        addFoodToCategory("Ready to Cook", "Stuffed Bell Peppers")
        addFoodToCategory("Ready to Cook", "Seasoned Pork Tenderloin")
        addFoodToCategory("Ready to Heat", "Beef Stroganoff")
        addFoodToCategory("Ready to Heat", "Vegetable Stir Fry")
        addFoodToCategory("Frozen Foods", "Frozen Berries")
        addFoodToCategory("Frozen Foods", "Fish Fingers")
        addFoodToCategory("Desserts", "Tiramisu")
        addFoodToCategory("Desserts", "Cheesecake")
        addFoodToCategory("Canned & Prepared Foods", "Canned Tuna")
        addFoodToCategory("Canned & Prepared Foods", "Canned Corn")
    }
        
     
        
    // Function to add a category to a specific aisle
    func addCategoryToAisle(_ aisleName: String, _ categoryName: String) {
        if let aisle = supermarket.aisles.first(where: { $0.name == aisleName }) {
            let category = Category(name: categoryName)
            aisle.categories.append(category)
            return
        }
        print("Aisle not found: \(aisleName)")
    }

    func addFoodToCategory(_ categoryName: String, _ foodName: String) {
        for aisle in supermarket.aisles {
            if let i = aisle.categories.firstIndex(where: { $0.name == categoryName }) {
                let food = FoodItem(name: foodName)
                aisle.categories[i].foodItems.append(food)
                return
            }
        }
        print("Category not found: \(categoryName)")
    }

    // To print the result and verify
    func log() {
        for aisle in self.supermarket.aisles {
            print("Aisle \(aisle.number): \(aisle.name)")
            for category in aisle.categories {
                print("  - \(category.name)")
                for food in category.foodItems {
                    print("    - \(food.name)")
                }
            }
            print()
        }
    }
}