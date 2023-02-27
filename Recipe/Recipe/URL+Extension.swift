import SwiftUI

extension URL {
    static let host = "api.spoonacular.com"
    static let scheme = "https"
    static let apiKey = "a67a5241c34f45429f75c2d8a1858a67" // "9ee0a79c9a79406a874c23b8c02ab9f1"
    
    static var recipesRandom: URL {
        var components = URLComponents()
        components.host = host
        components.path = "/recipes/random"
        components.scheme = scheme
        
        components.queryItems = [URLQueryItem]()
        components.queryItems?.append(URLQueryItem(name: "apiKey", value: apiKey))
        components.queryItems?.append(URLQueryItem(name: "number", value: "8"))
        
        return components.url!
    }
}
