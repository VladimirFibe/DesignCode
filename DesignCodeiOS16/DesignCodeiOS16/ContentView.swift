import SwiftUI

struct ContentView: View {
    @State private var time = 0.2
    var body: some View {
        let roundRect = RoundedRectangle(cornerRadius: 10)
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundColor(.accentColor)
            Text("Switching apps".uppercased())
                .font(.largeTitle.width(.compressed))
                .fontWeight(.bold)
            
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button(action: {
                print("yes")
            }) {
                Text("Got it")
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(roundRect.fill(.white.opacity(0.2).gradient))
                    .background(roundRect.stroke(.linearGradient(colors: [.white.opacity(0.5), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)))
            }
            .accentColor(.primary)
            .shadow(radius: 10)
        }
        .padding(30)
        .background(roundRect.fill(.regularMaterial))
        .overlay(roundRect.stroke(.linearGradient(colors: [.white.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom)))
        .shadow(color: .black.opacity(0.3), radius: 20, y: 20)
        .frame(maxWidth: 500)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Wallpaper 2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            )
    }
}
