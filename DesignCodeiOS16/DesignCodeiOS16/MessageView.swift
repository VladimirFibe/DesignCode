import SwiftUI

struct MessageView: View {
    @State private var time = 0.0
    @State private var showMessage = true
    let roundRect = RoundedRectangle(cornerRadius: 10)
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        content
            .opacity(showMessage ? 1 : 0)
            .scaleEffect(showMessage ? 1 : 0)
            .rotationEffect(.degrees(showMessage ? 0 : 30))
            .offset(y: showMessage ? 0 : 500)
            .blur(radius: showMessage ? 0 : 20)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
    var content: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundColor(.accentColor)
                .onReceive(timer) { value in
                    time = time < 1.0 ? time + 0.1 : 0.0
                }
            Text("Switching apps".uppercased())
                .font(.largeTitle.width(.compressed))
                .fontWeight(.bold)
            
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button(action: {
                withAnimation {
                    showMessage.toggle()
                }
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
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Wallpaper 2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            )
    }
}
