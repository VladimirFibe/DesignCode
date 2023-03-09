import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu: Menu
    var body: some View {
        List(navigationItems) { item in
            Button(action: {
                selectedMenu = item.menu
            }) {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedMenu: .constant(.compass))
    }
}
