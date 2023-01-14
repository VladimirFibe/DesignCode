import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: 0.2)
                .imageScale(.large)
                .font(.largeTitle)
                .foregroundColor(.accentColor)
            Text("Switching apps")
                .fontWeight(.bold)
                .font(.largeTitle)
            
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
            
            Button(action: {
                print("yes")
            }) {
                Text("Got it")
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10).stroke()
                    )
            }
            .accentColor(.primary)
        }
        .padding(30)
        .background(RoundedRectangle(cornerRadius: 10).fill(.regularMaterial))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(
                Image("Wallpaper 2")
                .resizable()
                .scaledToFill()
            )
    }
}
