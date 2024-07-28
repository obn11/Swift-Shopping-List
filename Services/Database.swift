import Foundation

// This is a Mock/ Seed database. Represents my real Supermarket
class Database {
    // SELECT * FROM dbo.foodItems f LEFT JOIN dbo.category c ON f.categoryId = c.Id;
    var foodDictionary: [String: voFoodItem]
    // SELECT * FROM dbo.categories c LEFT JOIN dbo.aisles a ON c.aisleId = a.Id;
    var categoryDictionary: [String: voCategory]
    // SELECT * FROM dbo.aisles
    var aisleDictionary: [String: voAisle]

    init() {
        self.foodDictionary = [:]
        self.categoryDictionary = [:]
        self.aisleDictionary = [:]
    }
    
    func seed() {

        // Ailes
        addAisle(0, "Fruits and Vegetables")
        addAisle(0.3, "Seafood")
        addAisle(0.6, "Meats")
        addAisle(1, "Breakfast and Bread")
        addAisle(2, "Pantry Staples")
        addAisle(3, "Cooking Essentials")
        addAisle(3.5, "Frozen Foods")
        addAisle(4, "Snacks and Sweets")
        addAisle(4.5, "Deli")
        addAisle(5, "Baking and Essentials")
        addAisle(6, "Beverages and Household")
        addAisle(7, "Health and Baby")
        addAisle(8, "Home and Pet")
        addAisle(9, "Snacks 1")
        addAisle(10, "Snacks 2")
        addAisle(11, "Specialty Foods and Beverages")
        addAisle(12, "Packaged Meats and Dairy")
        addAisle(12.5, "Beer and Wine")

        // Categories
        addCategory("Fruits", "Fruits and Vegetables")
        addCategory("Vegetables", "Fruits and Vegetables")
        addCategory("Seafood", "Seafood")
        addCategory("Meats", "Meats")
        addCategory("Deli", "Deli")
        addCategory("Beer", "Beer and Wine")
        addCategory("Wine", "Beer and Wine")
        
        addCategory("Breakfast cereal", "Breakfast and Bread")
        addCategory("Bread", "Breakfast and Bread")
        addCategory("Bread rolls and Wraps", "Breakfast and Bread")
        addCategory("Specialty breads", "Breakfast and Bread")
        addCategory("Spreads", "Breakfast and Bread")

        addCategory("Dressings", "Pantry Staples")
        addCategory("Herbs and Spices", "Pantry Staples")
        addCategory("International Foods", "Pantry Staples")
        addCategory("Pasta and Rice", "Pantry Staples")
        addCategory("Soups", "Pantry Staples")
        addCategory("Canned Foods", "Pantry Staples")

        addCategory("Cooking oil", "Cooking Essentials")
        addCategory("Vinegar", "Cooking Essentials")
        addCategory("Stocks and Gravies", "Cooking Essentials")
        addCategory("Sauces", "Cooking Essentials")
        addCategory("Kitchen and Plasticware", "Cooking Essentials")
        addCategory("Cards and Magazines", "Cooking Essentials")

        addCategory("Muesli bars", "Snacks and Sweets")
        addCategory("Party needs", "Snacks and Sweets")
        addCategory("Confectionery", "Snacks and Sweets")
        addCategory("Chocolate", "Snacks and Sweets")
        addCategory("Desserts", "Snacks and Sweets")

        addCategory("Eggs", "Baking and Essentials")
        addCategory("Baking needs", "Baking and Essentials")
        addCategory("Biscuits", "Baking and Essentials")
        addCategory("Paper towels and Foodwrap", "Baking and Essentials")
        addCategory("Ambient milks", "Baking and Essentials")
        addCategory("Water", "Baking and Essentials")

        addCategory("Energy and Sports drinks", "Beverages and Household")
        addCategory("Juice", "Beverages and Household")
        addCategory("Soft drink", "Beverages and Household")
        addCategory("Tea and Coffee", "Beverages and Household")
        addCategory("Toilet paper", "Beverages and Household")
        addCategory("Tissues", "Beverages and Household")

        addCategory("Health and Beauty", "Health and Baby")
        addCategory("Nappies", "Health and Baby")
        addCategory("Baby needs", "Health and Baby")
        addCategory("Baby food", "Health and Baby")
        addCategory("Socks and Hosiery", "Health and Baby")

        addCategory("Pet food", "Home and Pet")
        addCategory("Pet needs", "Home and Pet")
        addCategory("Laundry", "Home and Pet")
        addCategory("Cleaning", "Home and Pet")
        addCategory("Light bulbs", "Home and Pet")

        addCategory("Crackers", "Snacks 1")

        addCategory("Chips", "Snacks 2")

        addCategory("Pickles and Relishes", "Specialty Foods and Beverages")
        addCategory("Cultured foods", "Specialty Foods and Beverages")
        addCategory("Dips and Hummus", "Specialty Foods and Beverages")
        addCategory("Nuts", "Specialty Foods and Beverages")
        addCategory("Beer and Wine", "Specialty Foods and Beverages")

        addCategory("Continental meats", "Packaged Meats and Dairy")
        addCategory("Fresh soup and Pasta", "Packaged Meats and Dairy")
        addCategory("Yoghurts", "Packaged Meats and Dairy")
        addCategory("Butter", "Packaged Meats and Dairy")
        addCategory("Cheese", "Packaged Meats and Dairy")

        // Fruits
        addFood("Apples", "Fruits")
        addFood("Bananas", "Fruits")
        addFood("Oranges", "Fruits")
        addFood("Strawberries", "Fruits")
        addFood("Grapes", "Fruits")
        addFood("Pineapple", "Fruits")
        addFood("Mango", "Fruits")
        addFood("Peaches", "Fruits")
        addFood("Pears", "Fruits")
        addFood("Blueberries", "Fruits")

        // Vegetables
        addFood("Carrots", "Vegetables")
        addFood("Broccoli", "Vegetables")
        addFood("Lettuce", "Vegetables")
        addFood("Tomatoes", "Vegetables")
        addFood("Cucumbers", "Vegetables")
        addFood("Peppers", "Vegetables")
        addFood("Onions", "Vegetables")
        addFood("Potatoes", "Vegetables")
        addFood("Spinach", "Vegetables")
        addFood("Cauliflower", "Vegetables")

        // Seafood
        addFood("Salmon", "Seafood")
        addFood("Tuna", "Seafood")
        addFood("Shrimp", "Seafood")
        addFood("Cod", "Seafood")
        addFood("Tilapia", "Seafood")
        addFood("Crab", "Seafood")
        addFood("Mussels", "Seafood")
        addFood("Halibut", "Seafood")
        addFood("Trout", "Seafood")
        addFood("Scallops", "Seafood")

        // Meats
        addFood("Chicken", "Meats")
        addFood("Beef", "Meats")
        addFood("Pork", "Meats")
        addFood("Turkey", "Meats")
        addFood("Lamb", "Meats")
        addFood("Sausages", "Meats")
        addFood("Bacon", "Meats")
        addFood("Ham", "Meats")
        addFood("Veal", "Meats")
        addFood("Duck", "Meats")

        // Deli
        addFood("Salami", "Deli")
        addFood("Prosciutto", "Deli")
        addFood("Pastrami", "Deli")
        addFood("Roastbeef", "Deli")
        addFood("Bologna", "Deli")
        addFood("Mortadella", "Deli")
        addFood("Pepperoni", "Deli")
        addFood("Chorizo", "Deli")
        addFood("Pancetta", "Deli")
        addFood("Liverwurst", "Deli")

        // Beer
        addFood("Ale", "Beer")
        addFood("Lager", "Beer")
        addFood("Stout", "Beer")
        addFood("IPA", "Beer")
        addFood("Pilsner", "Beer")
        addFood("Porter", "Beer")
        addFood("Wheat", "Beer")
        addFood("Pale", "Beer")
        addFood("Amber", "Beer")
        addFood("Bock", "Beer")

        // Wine
        addFood("Chardonnay", "Wine")
        addFood("Merlot", "Wine")
        addFood("Cabernet", "Wine")
        addFood("Pinot", "Wine")
        addFood("Sauvignon", "Wine")
        addFood("Zinfandel", "Wine")
        addFood("Riesling", "Wine")
        addFood("Syrah", "Wine")
        addFood("Malbec", "Wine")
        addFood("Moscato", "Wine")

        // Breakfast cereal
        addFood("Oatmeal", "Breakfast cereal")
        addFood("Cornflakes", "Breakfast cereal")
        addFood("Granola", "Breakfast cereal")
        addFood("Muesli", "Breakfast cereal")
        addFood("Cheerios", "Breakfast cereal")
        addFood("Bran", "Breakfast cereal")
        addFood("Wheaties", "Breakfast cereal")
        addFood("Rice Krispies", "Breakfast cereal")
        addFood("Froot Loops", "Breakfast cereal")
        addFood("Raisin Bran", "Breakfast cereal")

        // Bread
        addFood("Wheat", "Bread")
        addFood("Sourdough", "Bread")
        addFood("Rye", "Bread")
        addFood("Baguette", "Bread")
        addFood("Pumpernickel", "Bread")
        addFood("Brioche", "Bread")
        addFood("Ciabatta", "Bread")
        addFood("Multigrain", "Bread")
        addFood("Focaccia", "Bread")
        addFood("Pita", "Bread")

        // Bread rolls and Wraps
        addFood("Bagels", "Bread rolls and Wraps")
        addFood("Croissants", "Bread rolls and Wraps")
        addFood("Tortillas", "Bread rolls and Wraps")
        addFood("Buns", "Bread rolls and Wraps")
        addFood("Lavash", "Bread rolls and Wraps")
        addFood("English muffins", "Bread rolls and Wraps")
        addFood("Naan", "Bread rolls and Wraps")
        addFood("Rolls", "Bread rolls and Wraps")
        addFood("Flatbread", "Bread rolls and Wraps")
        addFood("Pita", "Bread rolls and Wraps")

        // Specialty breads
        addFood("Challah", "Specialty breads")
        addFood("Banana bread", "Specialty breads")
        addFood("Zucchini bread", "Specialty breads")
        addFood("Garlic bread", "Specialty breads")
        addFood("Cornbread", "Specialty breads")
        addFood("Panettone", "Specialty breads")
        addFood("Babka", "Specialty breads")
        addFood("Irish soda bread", "Specialty breads")
        addFood("Cinnamon raisin", "Specialty breads")
        addFood("Olive bread", "Specialty breads")

        // Spreads
        addFood("Butter", "Spreads")
        addFood("Margarine", "Spreads")
        addFood("Jam", "Spreads")
        addFood("Peanut butter", "Spreads")
        addFood("Nutella", "Spreads")
        addFood("Hummus", "Spreads")
        addFood("Mayonnaise", "Spreads")
        addFood("Cream cheese", "Spreads")
        addFood("Honey", "Spreads")
        addFood("Avocado", "Spreads")

        // Dressings
        addFood("Ranch", "Dressings")
        addFood("Italian", "Dressings")
        addFood("Vinaigrette", "Dressings")
        addFood("Caesar", "Dressings")
        addFood("Balsamic", "Dressings")
        addFood("Thousand Island", "Dressings")
        addFood("Blue cheese", "Dressings")
        addFood("Honey mustard", "Dressings")
        addFood("French", "Dressings")
        addFood("Greek", "Dressings")

        // Herbs and Spices
        addFood("Basil", "Herbs and Spices")
        addFood("Oregano", "Herbs and Spices")
        addFood("Cinnamon", "Herbs and Spices")
        addFood("Cumin", "Herbs and Spices")
        addFood("Paprika", "Herbs and Spices")
        addFood("Thyme", "Herbs and Spices")
        addFood("Rosemary", "Herbs and Spices")
        addFood("Garlic powder", "Herbs and Spices")
        addFood("Nutmeg", "Herbs and Spices")
        addFood("Turmeric", "Herbs and Spices")

        // International Foods
        addFood("Soy sauce", "International Foods")
        addFood("Salsa", "International Foods")
        addFood("Curry paste", "International Foods")
        addFood("Coconut milk", "International Foods")
        addFood("Sriracha", "International Foods")
        addFood("Tahini", "International Foods")
        addFood("Wasabi", "International Foods")
        addFood("Gochujang", "International Foods")
        addFood("Hoisin sauce", "International Foods")
        addFood("Harissa", "International Foods")

        // Pasta and Rice
        addFood("Spaghetti", "Pasta and Rice")
        addFood("Penne", "Pasta and Rice")
        addFood("Basmati", "Pasta and Rice")
        addFood("Jasmine", "Pasta and Rice")
        addFood("Arborio", "Pasta and Rice")
        addFood("Fettuccine", "Pasta and Rice")
        addFood("Couscous", "Pasta and Rice")
        addFood("Quinoa", "Pasta and Rice")
        addFood("Orzo", "Pasta and Rice")
        addFood("Lasagna", "Pasta and Rice")

        // Soups
        addFood("Tomato", "Soups")
        addFood("Chicken noodle", "Soups")
        addFood("Minestrone", "Soups")
        addFood("Lentil", "Soups")
        addFood("Pumpkin", "Soups")
        addFood("Vegetable", "Soups")
        addFood("Mushroom", "Soups")
        addFood("Broccoli cheese", "Soups")
        addFood("Clam chowder", "Soups")
        addFood("French onion", "Soups")

        // Canned Foods
        addFood("Beans", "Canned Foods")
        addFood("Tuna", "Canned Foods")
        addFood("Corn", "Canned Foods")
        addFood("Tomatoes", "Canned Foods")
        addFood("Soup", "Canned Foods")
        addFood("Peas", "Canned Foods")
        addFood("Fruit cocktail", "Canned Foods")
        addFood("Salmon", "Canned Foods")
        addFood("Chili", "Canned Foods")
        addFood("Spam", "Canned Foods")

        // Cooking oil
        addFood("Olive oil", "Cooking oil")
        addFood("Vegetable oil", "Cooking oil")
        addFood("Canola oil", "Cooking oil")
        addFood("Coconut oil", "Cooking oil")
        addFood("Avocado oil", "Cooking oil")
        addFood("Sunflower oil", "Cooking oil")
        addFood("Sesame oil", "Cooking oil")
        addFood("Peanut oil", "Cooking oil")
        addFood("Grapeseed oil", "Cooking oil")
        addFood("Corn oil", "Cooking oil")

        // Vinegar
        addFood("Balsamic Vinegar", "Vinegar")
        addFood("Black Vinegar", "Vinegar")

        // Stocks and Gravies
        addFood("Chicken stock", "Stocks and Gravies")
        addFood("Beef stock", "Stocks and Gravies")
        addFood("Vegetable stock", "Stocks and Gravies")
        addFood("Fish stock", "Stocks and Gravies")
        addFood("Brown gravy", "Stocks and Gravies")
        addFood("Turkey gravy", "Stocks and Gravies")
        addFood("Mushroom gravy", "Stocks and Gravies")
        addFood("Onion gravy", "Stocks and Gravies")
        addFood("Au jus", "Stocks and Gravies")
        addFood("Bouillon cubes", "Stocks and Gravies")

        // Sauces
        addFood("Ketchup", "Sauces")
        addFood("Mustard", "Sauces")
        addFood("BBQ sauce", "Sauces")
        addFood("Hot sauce", "Sauces")
        addFood("Soy sauce", "Sauces")
        addFood("Worcestershire", "Sauces")
        addFood("Teriyaki", "Sauces")
        addFood("Pesto", "Sauces")
        addFood("Alfredo", "Sauces")
        addFood("Salsa", "Sauces")

        // Kitchen and Plasticware
        addFood("Plastic wrap", "Kitchen and Plasticware")
        addFood("Aluminum foil", "Kitchen and Plasticware")
        addFood("Sandwich bags", "Kitchen and Plasticware")
        addFood("Garbage bags", "Kitchen and Plasticware")
        addFood("Paper plates", "Kitchen and Plasticware")
        addFood("Plastic cups", "Kitchen and Plasticware")
        addFood("Plastic cutlery", "Kitchen and Plasticware")
        addFood("Food containers", "Kitchen and Plasticware")
        addFood("Parchment paper", "Kitchen and Plasticware")
        addFood("Cling film", "Kitchen and Plasticware")

        // Cards and Magazines
        addFood("Greeting cards", "Cards and Magazines")
        addFood("Magazines", "Cards and Magazines")
        addFood("Newspapers", "Cards and Magazines")
        addFood("Gift cards", "Cards and Magazines")
        addFood("Comics", "Cards and Magazines")
        addFood("Postcards", "Cards and Magazines")
        addFood("Notebooks", "Cards and Magazines")
        addFood("Calendars", "Cards and Magazines")
        addFood("Journals", "Cards and Magazines")
        addFood("Stationery", "Cards and Magazines")

        // Muesli bars
        addFood("Granola bars", "Muesli bars")
        addFood("Protein bars", "Muesli bars")
        addFood("Fruit bars", "Muesli bars")
        addFood("Nut bars", "Muesli bars")
        addFood("Cereal bars", "Muesli bars")
        addFood("Energy bars", "Muesli bars")
        addFood("Oat bars", "Muesli bars")
        addFood("Fiber bars", "Muesli bars")
        addFood("Breakfast bars", "Muesli bars")
        addFood("Seed bars", "Muesli bars")

        // Party needs
        addFood("Chips", "Party needs")
        addFood("Dips", "Party needs")
        addFood("Crackers", "Party needs")
        addFood("Pretzels", "Party needs")
        addFood("Popcorn", "Party needs")
        addFood("Nuts", "Party needs")
        addFood("Candy", "Party needs")
        addFood("Soda", "Party needs")
        addFood("Mixers", "Party needs")
        addFood("Ice", "Party needs")

        // Confectionery
        addFood("Chocolate", "Confectionery")
        addFood("Gummy bears", "Confectionery")
        addFood("Lollipops", "Confectionery")
        addFood("Licorice", "Confectionery")
        addFood("Jelly beans", "Confectionery")
        addFood("Marshmallows", "Confectionery")
        addFood("Fudge", "Confectionery")
        addFood("Caramels", "Confectionery")
        addFood("Toffee", "Confectionery")
        addFood("Mints", "Confectionery")

        // Chocolate
        addFood("Milk chocolate", "Chocolate")
        addFood("Dark chocolate", "Chocolate")
        addFood("White chocolate", "Chocolate")
        addFood("Truffles", "Chocolate")
        addFood("Chocolate bars", "Chocolate")
        addFood("Chocolate chips", "Chocolate")
        addFood("Cocoa powder", "Chocolate")
        addFood("Chocolate syrup", "Chocolate")
        addFood("Hot chocolate", "Chocolate")
        addFood("Chocolate spread", "Chocolate")

        // Desserts
        addFood("Ice cream", "Desserts")
        addFood("Cake", "Desserts")
        addFood("Cookies", "Desserts")
        addFood("Pudding", "Desserts")
        addFood("Pie", "Desserts")
        addFood("Brownies", "Desserts")
        addFood("Cheesecake", "Desserts")
        addFood("Tiramisu", "Desserts")
        addFood("Mousse", "Desserts")
        addFood("Trifle", "Desserts")
        
        // Eggs
        addFood("Chicken eggs", "Eggs")
        addFood("Quail eggs", "Eggs")
        addFood("Duck eggs", "Eggs")
        addFood("Egg whites", "Eggs")
        addFood("Egg substitutes", "Eggs")
        addFood("Free-range eggs", "Eggs")
        addFood("Organic eggs", "Eggs")
        addFood("Cage-free eggs", "Eggs")
        addFood("Liquid eggs", "Eggs")
        addFood("Egg powder", "Eggs")
        
        // Baking needs
        addFood("Flour", "Baking needs")
        addFood("Sugar", "Baking needs")
        addFood("Baking powder", "Baking needs")
        addFood("Baking soda", "Baking needs")
        addFood("Yeast", "Baking needs")
        addFood("Vanilla extract", "Baking needs")
        addFood("Chocolate chips", "Baking needs")
        addFood("Cocoa powder", "Baking needs")
        addFood("Food coloring", "Baking needs")
        addFood("Cornstarch", "Baking needs")
        
        // Biscuits
        addFood("Chocolate chip", "Biscuits")
        addFood("Shortbread", "Biscuits")
        addFood("Oatmeal", "Biscuits")
        addFood("Ginger snaps", "Biscuits")
        addFood("Digestive", "Biscuits")
        addFood("Wafers", "Biscuits")
        addFood("Cream-filled", "Biscuits")
        addFood("Macaroons", "Biscuits")
        addFood("Animal crackers", "Biscuits")
        addFood("Graham crackers", "Biscuits")
        
        // Paper towels and Foodwrap
        addFood("Paper towels", "Paper towels and Foodwrap")
        addFood("Plastic wrap", "Paper towels and Foodwrap")
        addFood("Aluminum foil", "Paper towels and Foodwrap")
        addFood("Wax paper", "Paper towels and Foodwrap")
        addFood("Parchment paper", "Paper towels and Foodwrap")
        addFood("Freezer bags", "Paper towels and Foodwrap")
        addFood("Food storage containers", "Paper towels and Foodwrap")
        addFood("Sandwich bags", "Paper towels and Foodwrap")
        addFood("Napkins", "Paper towels and Foodwrap")
        addFood("Baking cups", "Paper towels and Foodwrap")
        
        // Ambient milks
        addFood("UHT milk", "Ambient milks")
        addFood("Evaporated milk", "Ambient milks")
        addFood("Condensed milk", "Ambient milks")
        addFood("Powdered milk", "Ambient milks")
        addFood("Soy milk", "Ambient milks")
        addFood("Almond milk", "Ambient milks")
        addFood("Oat milk", "Ambient milks")
        addFood("Rice milk", "Ambient milks")
        addFood("Coconut milk", "Ambient milks")
        addFood("Goat milk", "Ambient milks")
        
        // Water
        addFood("Still water", "Water")
        addFood("Sparkling water", "Water")
        addFood("Mineral water", "Water")
        addFood("Flavored water", "Water")
        addFood("Spring water", "Water")
        addFood("Distilled water", "Water")
        addFood("Alkaline water", "Water")
        addFood("Coconut water", "Water")
        addFood("Electrolyte water", "Water")
        addFood("Tonic water", "Water")
        
        // Energy and Sports drinks
        addFood("Red Bull", "Energy and Sports drinks")
        addFood("Monster", "Energy and Sports drinks")
        addFood("Gatorade", "Energy and Sports drinks")
        addFood("Powerade", "Energy and Sports drinks")
        addFood("V", "Energy and Sports drinks")
        addFood("Rockstar", "Energy and Sports drinks")
        addFood("5-hour Energy", "Energy and Sports drinks")
        addFood("Vitamin Water", "Energy and Sports drinks")
        addFood("Celsius", "Energy and Sports drinks")
        addFood("Bang", "Energy and Sports drinks")
        
        // Juice
        addFood("Orange juice", "Juice")
        addFood("Apple juice", "Juice")
        addFood("Grape juice", "Juice")
        addFood("Cranberry juice", "Juice")
        addFood("Pineapple juice", "Juice")
        addFood("Tomato juice", "Juice")
        addFood("Grapefruit juice", "Juice")
        addFood("Lemon juice", "Juice")
        addFood("Pomegranate juice", "Juice")
        addFood("Vegetable juice", "Juice")
        
        // Soft drink
        addFood("Coke", "Soft drink")
        addFood("Lemon-lime soda", "Soft drink")
        addFood("Lemonaid", "Soft drink")
        addFood("Ginger ale", "Soft drink")
        addFood("soda", "Soft drink")
        addFood("soda water", "Soft drink")
        addFood("Grape soda", "Soft drink")
        addFood("Tonic water", "Soft drink")
        addFood("Club soda", "Soft drink")
        addFood("Diet soda", "Soft drink")
    
        // Tea and Coffee
        addFood("Tea", "Tea and Coffee")
        addFood("Coffee", "Tea and Coffee")
        
        // Toilet paper
        addFood("TP", "Toilet paper")
        addFood("Toilet paper", "Toilet paper")
        
        // Tissues
        addFood("Tissues", "Tissues")

        // Health and Beauty
        addFood("Shampoo", "Health and Beauty")
        addFood("Conditioner", "Health and Beauty")
        addFood("Toothpaste", "Health and Beauty")
        addFood("Deodorant", "Health and Beauty")
        addFood("Soap", "Health and Beauty")
        addFood("Lotion", "Health and Beauty")
        addFood("Sunscreen", "Health and Beauty")
        addFood("Razors", "Health and Beauty")
        addFood("Feminine hygiene", "Health and Beauty")
        addFood("Vitamins", "Health and Beauty")

        // Nappies
        addFood("Newborn", "Nappies")
        addFood("Size 1", "Nappies")
        addFood("Size 2", "Nappies")
        addFood("Size 3", "Nappies")
        addFood("Size 4", "Nappies")
        addFood("Size 5", "Nappies")
        addFood("Pull-ups", "Nappies")
        addFood("Swim diapers", "Nappies")
        addFood("Overnight", "Nappies")
        addFood("Eco-friendly", "Nappies")

        // Baby needs
        addFood("Baby wipes", "Baby needs")
        addFood("Baby powder", "Baby needs")
        addFood("Diaper rash cream", "Baby needs")
        addFood("Baby shampoo", "Baby needs")
        addFood("Baby lotion", "Baby needs")
        addFood("Baby oil", "Baby needs")
        addFood("Teething gel", "Baby needs")
        addFood("Pacifiers", "Baby needs")
        addFood("Bottles", "Baby needs")
        addFood("Bibs", "Baby needs")

        // Baby food
        addFood("Infant formula", "Baby food")
        addFood("Rice cereal", "Baby food")
        addFood("Pureed fruits", "Baby food")
        addFood("Pureed vegetables", "Baby food")
        addFood("Pureed meats", "Baby food")
        addFood("Teething biscuits", "Baby food")
        addFood("Baby snacks", "Baby food")
        addFood("Baby juice", "Baby food")
        addFood("Baby yogurt", "Baby food")
        addFood("Toddler meals", "Baby food")

        // Socks and Hosiery
        addFood("Ankle socks", "Socks and Hosiery")
        addFood("Crew socks", "Socks and Hosiery")
        addFood("Knee-high socks", "Socks and Hosiery")
        addFood("Pantyhose", "Socks and Hosiery")
        addFood("Tights", "Socks and Hosiery")
        addFood("Compression socks", "Socks and Hosiery")
        addFood("Dress socks", "Socks and Hosiery")
        addFood("Athletic socks", "Socks and Hosiery")
        addFood("Trouser socks", "Socks and Hosiery")
        addFood("Sock liners", "Socks and Hosiery")

        // Pet food
        addFood("Dry dog food", "Pet food")
        addFood("Wet dog food", "Pet food")
        addFood("Dry cat food", "Pet food")
        addFood("Wet cat food", "Pet food")
        addFood("Fish food", "Pet food")
        addFood("Bird seed", "Pet food")
        addFood("Hamster food", "Pet food")
        addFood("Rabbit food", "Pet food")
        addFood("Puppy food", "Pet food")
        addFood("Kitten food", "Pet food")

        // Pet needs
        addFood("Dog treats", "Pet needs")
        addFood("Cat treats", "Pet needs")
        addFood("Pet toys", "Pet needs")
        addFood("Litter", "Pet needs")
        addFood("Leashes", "Pet needs")
        addFood("Collars", "Pet needs")
        addFood("Pet shampoo", "Pet needs")
        addFood("Flea treatment", "Pet needs")
        addFood("Pet beds", "Pet needs")
        addFood("Pet brushes", "Pet needs")

        // Laundry
        addFood("Detergent", "Laundry")
        addFood("Fabric softener", "Laundry")
        addFood("Dryer sheets", "Laundry")
        addFood("Stain remover", "Laundry")
        addFood("Bleach", "Laundry")
        addFood("Color catcher", "Laundry")
        addFood("Wool wash", "Laundry")
        addFood("Delicates wash", "Laundry")
        addFood("Laundry bags", "Laundry")
        addFood("Clothes hangers", "Laundry")

        // Cleaning
        addFood("All-purpose cleaner", "Cleaning")
        addFood("Glass cleaner", "Cleaning")
        addFood("Floor cleaner", "Cleaning")
        addFood("Bathroom cleaner", "Cleaning")
        addFood("Kitchen cleaner", "Cleaning")
        addFood("Disinfectant wipes", "Cleaning")
        addFood("Sponges", "Cleaning")
        addFood("Scrub brushes", "Cleaning")
        addFood("Mop", "Cleaning")
        addFood("Broom", "Cleaning")

        // Light bulbs
        addFood("LED bulbs", "Light bulbs")
        addFood("Incandescent bulbs", "Light bulbs")
        addFood("CFL bulbs", "Light bulbs")
        addFood("Halogen bulbs", "Light bulbs")
        addFood("Smart bulbs", "Light bulbs")
        addFood("Flood lights", "Light bulbs")
        addFood("Spotlights", "Light bulbs")
        addFood("Dimmer bulbs", "Light bulbs")
        addFood("Decorative bulbs", "Light bulbs")
        addFood("Night lights", "Light bulbs")

        // Crackers
        addFood("Saltines", "Crackers")
        addFood("Whole wheat", "Crackers")
        addFood("Rice crackers", "Crackers")
        addFood("Cheese crackers", "Crackers")
        addFood("Graham crackers", "Crackers")
        addFood("Water crackers", "Crackers")
        addFood("Multigrain crackers", "Crackers")
        addFood("Sesame crackers", "Crackers")
        addFood("Crispbread", "Crackers")
        addFood("Flavored crackers", "Crackers")

        // Chips
        addFood("Potato chips", "Chips")
        addFood("Tortilla chips", "Chips")
        addFood("Corn chips", "Chips")
        addFood("Pita chips", "Chips")
        addFood("Vegetable chips", "Chips")
        addFood("Kettle chips", "Chips")
        addFood("BBQ chips", "Chips")
        addFood("Sour cream and onion", "Chips")
        addFood("Salt and vinegar", "Chips")
        addFood("Cheese flavored", "Chips")

        // Pickles and Relishes
        addFood("Dill pickles", "Pickles and Relishes")
        addFood("Sweet pickles", "Pickles and Relishes")
        addFood("Bread and butter pickles", "Pickles and Relishes")
        addFood("Pickle relish", "Pickles and Relishes")
        addFood("Cornichons", "Pickles and Relishes")
        addFood("Pickled onions", "Pickles and Relishes")
        addFood("Pickled peppers", "Pickles and Relishes")
        addFood("Sauerkraut", "Pickles and Relishes")
        addFood("Olives", "Pickles and Relishes")
        addFood("Capers", "Pickles and Relishes")

        // Cultured foods
        addFood("Yogurt", "Cultured foods")
        addFood("Kefir", "Cultured foods")
        addFood("Kombucha", "Cultured foods")
        addFood("Sauerkraut", "Cultured foods")
        addFood("Kimchi", "Cultured foods")
        addFood("Miso", "Cultured foods")
        addFood("Tempeh", "Cultured foods")
        addFood("Pickles", "Cultured foods")
        addFood("Sourdough bread", "Cultured foods")
        addFood("Natto", "Cultured foods")

        // Dips and Hummus
        addFood("Hummus", "Dips and Hummus")
        addFood("Guacamole", "Dips and Hummus")
        addFood("Salsa", "Dips and Hummus")
        addFood("Tzatziki", "Dips and Hummus")
        addFood("French onion dip", "Dips and Hummus")
        addFood("Spinach artichoke dip", "Dips and Hummus")
        addFood("Bean dip", "Dips and Hummus")
        addFood("Queso", "Dips and Hummus")
        addFood("Baba ganoush", "Dips and Hummus")
        addFood("Ranch dip", "Dips and Hummus")

        // Nuts
        addFood("Almonds", "Nuts")
        addFood("Peanuts", "Nuts")
        addFood("Cashews", "Nuts")
        addFood("Walnuts", "Nuts")
        addFood("Pistachios", "Nuts")
        addFood("Pecans", "Nuts")
        addFood("Macadamia nuts", "Nuts")
        addFood("Brazil nuts", "Nuts")
        addFood("Hazelnuts", "Nuts")
        addFood("Pine nuts", "Nuts")

        // Beer and Wine
        addFood("Red wine", "Beer and Wine")
        addFood("White wine", "Beer and Wine")
        addFood("Rose wine", "Beer and Wine")
        addFood("Sparkling wine", "Beer and Wine")
        addFood("Lager", "Beer and Wine")
        addFood("IPA", "Beer and Wine")
        addFood("Stout", "Beer and Wine")
        addFood("Ale", "Beer and Wine")
        addFood("Pilsner", "Beer and Wine")
        addFood("Cider", "Beer and Wine")

        // Continental meats
        addFood("Prosciutto", "Continental meats")
        addFood("Salami", "Continental meats")
        addFood("Chorizo", "Continental meats")
        addFood("Pancetta", "Continental meats")
        addFood("Pepperoni", "Continental meats")
        addFood("Mortadella", "Continental meats")
        addFood("Capicola", "Continental meats")
        addFood("Bresaola", "Continental meats")
        addFood("Serrano ham", "Continental meats")
        addFood("Sopressata", "Continental meats")

        // Fresh soup and Pasta
        addFood("Tomato soup", "Fresh soup and Pasta")
        addFood("Chicken noodle soup", "Fresh soup and Pasta")
        addFood("Minestrone", "Fresh soup and Pasta")
        addFood("Tortellini", "Fresh soup and Pasta")
        addFood("Ravioli", "Fresh soup and Pasta")
        addFood("Fettuccine", "Fresh soup and Pasta")
        addFood("Gnocchi", "Fresh soup and Pasta")
        addFood("Pumpkin soup", "Fresh soup and Pasta")
        addFood("Vegetable soup", "Fresh soup and Pasta")
        addFood("Lasagna sheets", "Fresh soup and Pasta")

        // Yoghurts
        addFood("Greek yogurt", "Yoghurts")
        addFood("Plain yogurt", "Yoghurts")
        addFood("Flavored yogurt", "Yoghurts")
        addFood("Low-fat yogurt", "Yoghurts")
        addFood("Non-fat yogurt", "Yoghurts")
        addFood("Probiotic yogurt", "Yoghurts")
        addFood("Soy yogurt", "Yoghurts")
        addFood("Coconut yogurt", "Yoghurts")
        addFood("Drinkable yogurt", "Yoghurts")
        addFood("Frozen yogurt", "Yoghurts")

        // Butter
        addFood("Salted butter", "Butter")
        addFood("Unsalted butter", "Butter")
        addFood("Cultured butter", "Butter")
        addFood("Grass-fed butter", "Butter")
        addFood("Clarified butter", "Butter")
        addFood("Whipped butter", "Butter")
        addFood("Plant-based butter", "Butter")
        addFood("European-style butter", "Butter")
        addFood("Spreadable butter", "Butter")
        addFood("Flavored butter", "Butter")

        // Cheese
        addFood("Cheddar", "Cheese")
        addFood("Mozzarella", "Cheese")
        addFood("Parmesan", "Cheese")
        addFood("Gouda", "Cheese")
        addFood("Brie", "Cheese")
        addFood("Feta", "Cheese")
        addFood("Swiss", "Cheese")
        addFood("Blue cheese", "Cheese")
        addFood("Cream cheese", "Cheese")
        addFood("Cottage cheese", "Cheese")
    }
    
    func addAisle(_ number: Double, _ name: String) {
        self.aisleDictionary[name] = voAisle(number: number, name: name)
     }
        
    func addCategory(_ categoryName: String, _ aisleName: String) {
        categoryDictionary[categoryName] = voCategory(name: categoryName, aisle: self.aisleDictionary[aisleName]!)
    }

    func addFood(_ foodName: String, _ categoryName: String) {
        let normalizedFood = Utils.normalize(foodName)
        foodDictionary[normalizedFood] = voFoodItem(foodName, categoryName)
    }

    // Debug purposes only
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