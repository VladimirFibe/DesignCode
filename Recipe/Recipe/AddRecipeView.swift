import SwiftUI

struct AddRecipeView: View {
    @State private var name = ""
    @State private var description = ""
    @State private var ingridients = ""
    @State private var directions = ""
    @State private var category = Category.main
    @State private var navigateToRecipe = false
    @ObservedObject var viewModel: RecipeViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $category) {
                        ForEach(Category.allCases) {
                            Text($0.rawValue).tag($0)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingridients")) {
                    TextEditor(text: $ingridients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: RecipeModel.all.sorted { $0.dataPublished > $1.dataPublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe.toggle()
                        } label: {
                            Label("Save", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            }
        }
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        viewModel.addRecipe(RecipeModel(name: name, category: category, description: description, ingredients: ingridients, directions: directions))
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView(viewModel: RecipeViewModel())
    }
}
