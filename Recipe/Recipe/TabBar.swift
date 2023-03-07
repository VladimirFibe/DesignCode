import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .onAppear {
            let html = "If you want to add more <b>gluten free and dairy free</b> recipes to your recipe box, Chicken Sausage, White Bean and Cabbage Soup might be a recipe you should try. One serving contains <b>312 calories</b>, <b>19g of protein</b>, and <b>13g of fat</b>. For <b>$1.96 per serving</b>, this recipe <b>covers 17%</b> of your daily requirements of vitamins and minerals. This recipe serves 6. 13 people have made this recipe and would make it again. A mixture of olive oil, mild chicken sausage, salt, and a handful of other ingredients are all it takes to make this recipe so flavorful. It can be enjoyed any time, but it is especially good for <b>Autumn</b>. From preparation to the plate, this recipe takes roughly <b>45 minutes</b>. It works well as a main course. It is brought to you by Foodista. Overall, this recipe earns a <b>pretty good spoonacular score of 67%</b>. Try <a href=\"https://spoonacular.com/recipes/white-bean-and-chicken-sausage-soup-1065782\">White Bean and Chicken Sausage Soup</a>, <a href=\"https://spoonacular.com/recipes/chicken-sausage-and-white-bean-soup-video-850572\">Chicken Sausage and White Bean Soup Video</a>, and <a href=\"https://spoonacular.com/recipes/cabbage-and-white-bean-soup-11799\">Cabbage and White Bean Soup</a> for similar recipes."

            do {
                let dom = try HTMLParser().parse(html: html)
                print(dom)
                let markdown = dom.toMarkdown(options: .unorderedListBullets)
                print(markdown)
            } catch {
                // parsing error
            }

        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
