import Foundation

final class RecipeHTTPClient {
    static let shared = RecipeHTTPClient()
    private init() {}
    
    func getProduct() {
        Task {
            let (data, response) = try await URLSession.shared.data(from: URL.allCategories)
            print(response)
        }
    }
}
