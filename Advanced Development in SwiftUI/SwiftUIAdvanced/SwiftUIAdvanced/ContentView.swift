import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack(alignment: .leading, spacing: 16.0) {
                    Text("Sign up")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials and livestreams")
                        .font(.subheadline)
                        .foregroundColor(Color.white.opacity(0.7))
                    emailField
                    passwordField
                }
                .padding(20)
            }
            .background(Color("secondaryBackground")
                .opacity(0.5))
            .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(Color.white.opacity(0.2)))
            .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
            .padding(.horizontal)
        }
    }
    var emailField: some View {
        HStack(spacing: 12.0) {
            Image(systemName: "envelope.open.fill")
                .foregroundColor(.white)
            TextField("Email", text: $email)
                .colorScheme(.dark)
                .foregroundColor(.white.opacity(0.7))
                .autocapitalization(.none)
                .textContentType(.emailAddress)
        }
        .frame(height: 52)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("secondaryBackground"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white, lineWidth: 1.0)
                .blendMode(.overlay)
        )
    }
    
    var passwordField: some View {
        HStack(spacing: 12.0) {
            Image(systemName: "key.fill")
                .foregroundColor(.white)
            SecureField("Password", text: $password)
                .colorScheme(.dark)
                .foregroundColor(.white.opacity(0.7))
        }
        .frame(height: 52)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("secondaryBackground"))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white, lineWidth: 1.0)
                .blendMode(.overlay)
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
