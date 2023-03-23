import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @GestureState var press = false
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                GridView()
            case .charts:
                DetailView()
            case .radial:
                RadialLayoutView()
            case .halfsheet:
                MenuView()
            case .gooey:
                Text("gooey")
            case .actionbutton:
                Text("actionButton")
            }
        }
        .sheet(isPresented: $showMenu) {
            MenuView()
                .presentationDetents([.medium, .large])
        }
        .onTapGesture {}
        .gesture(longPress)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
