import SwiftUI

struct RecipeCard: View {
    var recipe: RecipeModel
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: recipe.image), content: { image in
                image
                    .resizable()
                    .scaledToFill()
            }, placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            })
            .frame(width: 160, height: 217, alignment: .top)
            .background(
                LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), .gray]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
            .overlay(alignment: .bottom) {
                Text(recipe.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: 136)
                    .padding(.bottom)
                    .shadow(color: .black, radius: 3, x: 0, y: 0)
            }
            
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
