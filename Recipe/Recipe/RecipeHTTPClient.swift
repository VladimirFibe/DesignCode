import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case decodingError
}

final class RecipeHTTPClient {
    static let shared = RecipeHTTPClient()
    private init() {}
    
    func getProduct() async throws -> [RecipeModel] {
        guard let url = URL(string: "https://api.spoonacular.com/recipes/random?apiKey=a67a5241c34f45429f75c2d8a1858a67&number=8") else { throw NetworkError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw NetworkError.invalidResponse }
        let str = String(decoding: data, as: UTF8.self)
        print(str)
        guard let response = try? JSONDecoder().decode(RecipeResponse.self, from: data) else { throw NetworkError.decodingError }
        print(response.recipes.count)
        return response.recipes.map { RecipeModel(recipe: $0)}
    }
    
    func getRecipes() -> [RecipeModel] {
        guard let url = Bundle.main.url(forResource: "Recipe", withExtension: "json") else { return []}
        do {
            let data = try Data(contentsOf: url)
            let recipes = try JSONDecoder().decode([Recipe].self, from: data)
            print(recipes.count)
            return recipes.map { RecipeModel(recipe: $0)}
        } catch {
            print(error.localizedDescription)
        }
        return []
    }
}
