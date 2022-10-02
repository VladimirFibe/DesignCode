import SwiftUI

enum LoginFocuasable: Hashable {
    case email
    case password
}
struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @FocusState var focusedTextField: LoginFocuasable?
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
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                self.focusedTextField = .email
            }
        }
        .onSubmit {
            if focusedTextField == .email {
                focusedTextField = .password
            } else {
                focusedTextField = nil
            }
        }
    }
    var emailField: some View {
        HStack(spacing: 12.0) {
            TextFieldIcon(systemName: "envelope.open.fill", currentlyEditing: focusedTextField == .email)
            TextField("Email", text: $email)
                .colorScheme(.dark)
                .foregroundColor(.white.opacity(0.7))
                .autocapitalization(.none)
                .textContentType(.emailAddress)
                .focused($focusedTextField,equals: .email)
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
            TextFieldIcon(systemName: "key.fill", currentlyEditing: focusedTextField == .password)
            SecureField("Password", text: $password)
                .colorScheme(.dark)
                .foregroundColor(.white.opacity(0.7))
                .focused($focusedTextField, equals: .password)
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
