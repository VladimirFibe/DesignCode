import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(Category.allCases) { category   in
                    NavigationLink(value: category) {
                        Text("\(category.rawValue)s")
                    }
                }
            }
            .navigationBarTitle("Categories")
            .navigationDestination(for: Category.self) { category in
                CategoryView(category: category)
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
