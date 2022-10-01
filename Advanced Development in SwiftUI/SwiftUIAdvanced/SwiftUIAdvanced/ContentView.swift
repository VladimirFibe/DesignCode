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
                    GradientButton(title: "Sign Up") {
                        print("Yes")
                    }
                    Text("By clicking on Sign up, you agree to our Terms of service and Privacy policy")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.7))
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.white.opacity(0.1))
                    Button {
                        print("Switch to Sign in")
                    } label: {
                        HStack {
                            Text("Already have an account ")
                                .font(.footnote)
                                .foregroundColor(.white.opacity(0.7))
                            GradientText("Sign in")
                                .font(.footnote.bold())
                        }
                    }
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

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self
            .overlay(LinearGradient(
                gradient: Gradient(colors: colors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            )
            .mask(self)
    }
}

struct GradientText: View {
    let title: String
    init(_ title: String) {
        self.title = title
    }
    var body: some View {
        Text(title)
            .gradientForeground(colors: [
                Color("pink-gradient-1"),
                Color("pink-gradient-2")
            ])
    }
}

struct GradientButton: View {
    let title: String
    let action: () -> Void
    let colors: [Color] = [
        Color.init(red: 101/255, green: 134/255, blue: 1),
        Color.init(red: 1, green: 64/255, blue: 80/255),
        Color.init(red: 109/255, green: 1, blue: 185/255),
        Color.init(red: 39/255, green: 232/255, blue: 1),
    ]
    var body: some View {
        Button(action: action) {
            ZStack {
                AngularGradient(colors: colors, center: .center)
                    .blendMode(.overlay)
                    .blur(radius: 8.0)
                    .mask(
                        RoundedRectangle(cornerRadius: 16.0)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .blur(radius: 8)
                    )
                GradientText(title)
                    .font(.headline)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        Color("tertiaryBackground")
                            .opacity(0.9)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.white, lineWidth: 1.9)
                    )
                    .cornerRadius(16)
            }
            .frame(height: 50)
        }
    }
}
