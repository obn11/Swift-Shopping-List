import Foundation

class AiCategorizer {
  static let shared = AiCategorizer()

  private init() {}

  public static func classifyUnmatchedItems(uncategorizedFoods: [String],categories: [String], completion: @escaping ([voFoodItem]) -> Void) {
    Task {
      let result = await shared.makeRequest(uncategorizedFoods: uncategorizedFoods, categories: categories)
      completion(result)
      exit(0)
    }
    RunLoop.current.run()
  }

  // Helpers
  
  private func makeRequest(uncategorizedFoods foodList: [String], categories categoryList: [String]) async -> [voFoodItem] {
    let client: AiClientProtocol = MockAiClient()

    let request = Request(
        model: "gpt-4o-mini",
        messages: [
            ChatMessage(role: "system", content: getSystemPrompt()),
            ChatMessage(role: "user", content: getUserPrompt(foodList: foodList, categoryList: categoryList))
        ],
        temperature: 1,
        maxTokens: 1080,
        topP: 1,
        frequencyPenalty: 0,
        presencePenalty: 0
    )

    do {
      print("Making Request...")
      let response = try await client.sendRequest(request)
      print("Request Completed")
      return handleAPIResponse(response)
    } catch {
        print("Error: \(error)")
        return []
    }
  }

  private func handleAPIResponse(_ response: Response) -> [voFoodItem] {
    guard let jsonString = response.choices.first?.message.content else {
      print("Error: No content in response")
      return []
    }
    
    let jsonData = Data(jsonString.utf8)
    let decoder = JSONDecoder()

    do {
      let response = try decoder.decode(CategorizedFoodsResponse.self, from: jsonData)
      return response.categorizedFoods
    } catch {
      print("Error decoding JSON: \(error)")
    }
    return []
  }

  private func getSystemPrompt() -> String {
    return """
    # Food Categorization Task

    You are a highly knowledgeable nutrition and grocery expert. Your task is to categorize a list of food items into predefined categories. Please follow these instructions carefully:

    ## Input:
    1. A list of food items that need categorization: []
    2. A list of predefined food categories: []

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

  private func getUserPrompt(foodList: [String], categoryList: [String]) -> String {
    return """
    #Input
    1. A list of food items that need categorization: 
    \(foodList)

    2. A list of predefined food categories: 
    \(categoryList)
    """
  }
}

struct CategorizedFoodsResponse: Codable {
    let categorizedFoods: [voFoodItem]

    enum CodingKeys: String, CodingKey {
        case categorizedFoods = "categorized_foods"
    }
}

struct ChatMessage: Codable {
    let role: String
    let content: String
}

struct Request: Codable {
  let model: String
  let messages: [ChatMessage]
  let temperature: Double
  let maxTokens: Int
  let topP: Double
  let frequencyPenalty: Double
  let presencePenalty: Double

  enum CodingKeys: String, CodingKey {
    case model, messages, temperature
    case maxTokens = "max_tokens"
    case topP = "top_p"
    case frequencyPenalty = "frequency_penalty"
    case presencePenalty = "presence_penalty"
  }
}