import SwiftUI

extension URL {
    static let host = "api.spoonacular.com"
    static let scheme = "https"
    static let apiKey = "9ee0a79c9a79406a874c23b8c02ab9f1"
    static var development: URL {
        URL(string: "https://api.spoonacular.com/")!
    }
    
    static var production: URL {
        URL(string: "https://api.spoonacular.com/")!
    }
    
    static var `default`: URL {
        #if DEBUG
        return development
        #else
        return production
        #endif
    }
    
    static var allCategories: URL {
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
