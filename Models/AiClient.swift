import Foundation

// Protocol for the OpenAI client
protocol AiClientProtocol {
	 func sendRequest(_ request: Request) async throws -> Response
}

// Mock implementation of the OpenAI client
// PROJECT NOTE: Due to replt's package and api calling limitations 
// I couldn't send a real request, so Mocked out like a test
class MockAiClient: AiClientProtocol {
	func sendRequest(_ request: Request) async throws -> Response {
		// Simulating network delay
		try await Task.sleep(nanoseconds: 1_000_000_000) // 1 second delay
		
		let mockResponseContent = """
		{
		  "categorized_foods": [
			 {
				"food_item": "wrap",
				"category": "Bread rolls and Wraps"
			 },
			 {
				"food_item": "soap powder friend for clothe",
				"category": "Cleaning",
				"note": "This item is a clothing detergent."
			 },
			 {
				"food_item": "garlic whole",
				"category": "Herbs and Spices"
			 },
			 {
				"food_item": "chilli beans x1",
				"category": "Canned Foods"
			 },
			 {
				"food_item": "potato",
				"category": "Vegetables"
			 },
			 {
				"food_item": "pasta",
				"category": "Fresh soup and Pasta"
			 },
			 {
				"food_item": "mayo",
				"category": "Dressings"
			 },
			 {
				"food_item": "salmon fortnightly",
				"category": "Seafood"
			 },
			 {
				"food_item": "weetbix",
				"category": "Breakfast cereal"
			 },
			 {
				"food_item": "black beans x3",
				"category": "Canned Foods"
			 },
			 {
				"food_item": "meat",
				"category": "Meats"
			 },
			 {
				"food_item": "chicken thigh",
				"category": "Meats"
			 },
			 {
				"food_item": "fruit",
				"category": "Fruits"
			 },
			 {
				"food_item": "tuna x6",
				"category": "Seafood"
			 },
			 {
				"food_item": "vacuum cleaner bags request from jen",
				"category": "Cleaning",
				"note": "This item is a household supply."
			 },
			 {
				"food_item": "celery",
				"category": "Vegetables"
			 },
			 {
				"food_item": "frozen raspberrie",
				"category": "Fruits"
			 },
			 {
				"food_item": "800 ml of cream",
				"category": "Butter"
			 },
			 {
				"food_item": "tin foil",
				"category": "Kitchen and Plasticware",
				"note": "This item is typically used for food preparation."
			 },
			 {
				"food_item": "potatos l",
				"category": "Vegetables"
			 },
			 {
				"food_item": "tomato paste",
				"category": "Sauces"
			 },
			 {
				"food_item": "oil",
				"category": "Cooking oil"
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
