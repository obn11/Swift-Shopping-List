import Foundation

// Protocol for the OpenAI client
protocol AiClientProtocol {
	 func sendRequest(_ request: Request) async throws -> Response
}

// Mock implementation of the OpenAI client
class MockAiClient: AiClientProtocol {
	func sendRequest(_ request: Request) async throws -> Response {
		// Simulating network delay
		try await Task.sleep(nanoseconds: 1_000_000_000) // 1 second delay
		
		let mockResponseContent = """
		{
			"categorized_foods": [
				{
				  "food_item": "wrap",
				  "category": "Bakery"
				},
				{
				  "food_item": "soap powder friend for clothe",
				  "category": "Cleaning Products",
				  "note": "This item is clothing detergent."
				},
				{
				  "food_item": "garlic whole",
				  "category": "Spices & Seasonings"
				},
				{
				  "food_item": "chilli beans x1",
				  "category": "Canned & Prepared Foods"
				},
				{
				  "food_item": "onion",
				  "category": "Fruit & Vegetables"
				},
				{
				  "food_item": "mayo",
				  "category": "Sauces, Stock & Marinades"
				},
				{
				  "food_item": "salmon fortnightly",
				  "category": "Seafood"
				},
				{
				  "food_item": "weetbix",
				  "category": "Breakfast Cereals"
				},
				{
				  "food_item": "yogurt",
				  "category": "Dairy & Eggs"
				},
				{
				  "food_item": "black beans x3",
				  "category": "Canned & Prepared Foods"
				},
				{
				  "food_item": "chicken thigh",
				  "category": "Butchery"
				},
				{
				  "food_item": "tuna x6",
				  "category": "Seafood"
				},
				{
				  "food_item": "vacuum cleaner bags request from jen",
				  "category": "Household",
				  "note": "This item is a household supply."
				},
				{
				  "food_item": "onion",
				  "category": "Fruit & Vegetables"
				},
				{
				  "food_item": "celery",
				  "category": "Fruit & Vegetables"
				},
				{
				  "food_item": "frozen raspberrie",
				  "category": "Frozen Foods"
				},
				{
				  "food_item": "800 ml of cream",
				  "category": "Dairy & Eggs"
				},
				{
				  "food_item": "brown sugar",
				  "category": "Baking Supplies & Sugar"
				},
				{
				  "food_item": "caster sugar",
				  "category": "Baking Supplies & Sugar"
				},
				{
				  "food_item": "tin foil",
				  "category": "Household",
				  "note": "This item is a kitchen supply."
				},
				{
				  "food_item": "potatos l",
				  "category": "Fruit & Vegetables"
				},
				{
				  "food_item": "mushroom",
				  "category": "Fruit & Vegetables"
				},
				{
				  "food_item": "tomato paste",
				  "category": "Sauces, Stock & Marinades"
				},
				{
				  "food_item": "oil",
				  "category": "Sauces, Stock & Marinades"
				}
			]
		}
		"""
		
		return Response(choices: [
			Choice(message: Message(role: "assistant", content: mockResponseContent))
		])
	}
}

struct Response: Codable {
	 let choices: [Choice]
}

struct Choice: Codable {
	 let message: Message
}

struct Message: Codable {
	 let role: String
	 let content: String
}
