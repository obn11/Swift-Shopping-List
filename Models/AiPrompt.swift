class Prompt {
  static func getAiPrompt(uncategorizedFoods: String, categories: String) -> String {
    return 
"""
    # Food Categorization Task
  
    You are a highly knowledgeable nutrition and grocery expert. Your task is to categorize a list of food items into predefined categories. Please follow these instructions carefully:
  
    ## Input:
    1. A list of food items that need categorization: [\(uncategorizedFoods)]
    2. A list of predefined food categories: [\(categories)]
  
    ## Task:
    Assign each food item to the most appropriate category from the provided list. If a food item could reasonably fit into multiple categories, choose the most specific or commonly associated category.
  
    ## Rules:
    1. Every food item MUST be categorized. Do not leave any item uncategorized.
    2. Use ONLY the categories provided. Do not create new categories.
    3. If an item doesn't clearly fit any category, assign it to the closest matching category and add a note explaining your reasoning.
    4. For items that are branded products or prepared foods, categorize based on the primary ingredient or type of food (e.g., "Oreos" would go in "Snacks" or "Baked Goods", not "Processed Foods").
    5. Be consistent in your categorizations. Similar items should be in the same category unless there's a compelling reason to separate them.
  
    ## Output Format:
    Provide your response in a JSON format as follows:
  
    ```json
    {
      "categorized_foods": [
        {
          "food_item": "item name",
          "category": "assigned category",
          "note": "explanation if necessary (optional)"
        },
        // ... more items
      ]
    }
    ```
  
    ## Example:
    Input:
    - Food items: ["Quinoa", "Fruit Loops", "Almond milk", "Tofu"]
    - Categories: ["Grains", "Cereals", "Dairy Alternatives", "Protein Sources", "Snacks"]
  
    Output:
    ```json
    {
      "categorized_foods": [
        {
          "food_item": "Quinoa",
          "category": "Grains"
        },
        {
          "food_item": "Fruit Loops",
          "category": "Cereals"
        },
        {
          "food_item": "Almond milk",
          "category": "Dairy Alternatives"
        },
        {
          "food_item": "Tofu",
          "category": "Protein Sources"
        }
      ]
    }
    ```
  
    Remember, your goal is to categorize all items accurately and consistently. If you're unsure about any item, provide your best judgment along with a brief explanation.
"""
  }
}