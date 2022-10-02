import SwiftUI

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

struct GradientText_Previews: PreviewProvider {
    static var previews: some View {
        GradientText("Hi!")
    }
}
