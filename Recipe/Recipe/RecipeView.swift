import SwiftUI

struct RecipeView: View {
    var recipe: RecipeModel

    var body: some View {
        ScrollView(.vertical) {
            VStack {
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
                .frame(height: 300, alignment: .top)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), .gray]), startPoint: .top, endPoint: .bottom))
                
                VStack(spacing: 30) {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    VStack(alignment: .leading, spacing: 30) {
                        Text(recipe.description)
                    }
                }
                .padding(.horizontal)
            }
        }
//        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeModel.all[0])
    }
}
