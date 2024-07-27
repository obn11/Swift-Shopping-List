//import OpenAISwift
class iAiCaller {

    public static func categorizeFoods(uncategorizedFoods: [String], categories: [String]) throws -> String {
        // let openAI = OpenAISwift(authToken: "YOUR_API_KEY")
        let prompt = prepareAIPrompt(uncategorizedFoods: uncategorizedFoods, categories: categories)
    
        // let result = try await openAI.sendCompletion(
        //     with: prompt, 
        //     model: "gpt-4o-mini", 
        //     maxTokens: 1000
        // )
    
        //result.choices.first?.text ?? ""
        //print(prompt)

        let data = "Data fetched!"
        
        return data
    }
    
    public static func prepareAIPrompt(uncategorizedFoods: [String], categories: [String]) -> String {
        let foodList = uncategorizedFoods.map { "\"" + $0 + "\"" }.joined(separator: ", ")
        let categoryList = categories.map { "\"" + $0 + "\"" }.joined(separator: ", ")
    
        return Prompt.getAiPrompt(uncategorizedFoods: foodList, categories: categoryList)
    }
    
}