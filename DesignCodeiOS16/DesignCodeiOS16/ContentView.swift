import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenu: Menu = .compass
    var body: some View {
        ZStack {
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .charts:
                Text("Card")
            case .radial:
                Text("Card")
            case .halfsheet:
                Text("Card")
            case .gooey:
                Text("Card")
            case .actionbutton:
                Text("Card")
            }
            
            Button("Show Menu") {
                showMenu = true
            }
        }
        .sheet(isPresented: $showMenu) {
            MenuView(selectedMenu: $selectedMenu)
                .presentationDetents([.medium, .large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
