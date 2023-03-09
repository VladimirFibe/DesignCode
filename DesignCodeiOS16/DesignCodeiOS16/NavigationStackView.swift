import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List(0 ..< 5) { item in
                NavigationLink(destination: Text("Content")) {
                    Label("Item", systemImage: "house")
                        .foregroundColor(.primary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
