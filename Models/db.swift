import Foundation

// This will be represented as a proper db eventually
class db {
    var foodDictionary: [String: voFoodItem]
    var categoryDictionary: [String: voCategory]
    var aisleDictionary: [String: voAisle]

    init() {
        self.foodDictionary = [:]
        self.categoryDictionary = [:]
        self.aisleDictionary = [:]
    }
    
    func seed() {

        // Ailes
        addAisle(1, "Fresh Produce & Deli")
        addAisle(2, "Dairy & Refrigerated")
        addAisle(3, "Frozen Foods")
        addAisle(4, "Pantry Staples")
        addAisle(5, "Snacks & Beverages")
        addAisle(6, "Alcohol")
        addAisle(7, "Household & Personal Care")
        addAisle(8, "Miscellaneous")

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
        addFoodToCategory("Fruit & Vegetables", "Potato")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Ham")
        addFoodToCategory("Deli, Salads & Cooked Meats", "Potato Salad")
        addFoodToCategory("Butchery", "Mince")
        addFoodToCategory("Butchery", "Chicken")
        addFoodToCategory("Bakery", "Bread")
        addFoodToCategory("Bakery", "Croissants")
        addFoodToCategory("Seafood", "Salmon")
        addFoodToCategory("Seafood", "Shrimp")
        addFoodToCategory("Dairy & Eggs", "Milk")
        addFoodToCategory("Dairy & Eggs", "Greek Yogurt")
        addFoodToCategory("Cheese", "Cheddar")
        addFoodToCategory("Cheese", "Mozzarella")
        addFoodToCategory("Ready to Cook", "Chicken Skewers")
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
        addFoodToCategory("Spices & Seasonings", "Pepper")
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
        addFoodToCategory("Hot Drinks", "Coffee")
        addFoodToCategory("Hot Drinks", "Green Tea")
        addFoodToCategory("Beer & Cider", "Craft IPA")
        addFoodToCategory("Beer & Cider", "Apple Cider")
        addFoodToCategory("Wine", "Cabernet Sauvignon")
        addFoodToCategory("Wine", "Chardonnay")
        addFoodToCategory("Cleaning Products", "All-Purpose Cleaner")
        addFoodToCategory("Cleaning Products", "Soap")
        addFoodToCategory("Laundry", "Laundry Detergent")
        addFoodToCategory("Laundry", "Fabric Softener")
        addFoodToCategory("Household", "Paper Towels")
        addFoodToCategory("Household", "Rubbish Bags")
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
        addFoodToCategory("Canned & Prepared Foods", "Tuna")
        addFoodToCategory("Canned & Prepared Foods", "Canned Corn")
    }
    
    func addAisle (_ number: Int, _ name: String) {
        self.aisleDictionary[name] = voAisle(number: number, name: name)
     }
        
    func addCategoryToAisle(_ aisleName: String, _ categoryName: String) {
        categoryDictionary[categoryName] = voCategory(name: categoryName, aisle: self.aisleDictionary[aisleName]!)
    }

    func addFoodToCategory(_ categoryName: String, _ foodName: String) {
        let normalizedFood = Utils.normalize(foodName)
        foodDictionary[normalizedFood] = voFoodItem(foodName, categoryName)
    }

    // To print the result and verify
    func log() {
        for (_, foodItem) in foodDictionary {
            print("Food: \(foodItem.name) => Category: \(foodItem.category)")
        }
        print()
        for (_, category) in categoryDictionary {
            print("Category: \(category.name) => Aisle: \(category.aisle.name)")
        }
    }
}