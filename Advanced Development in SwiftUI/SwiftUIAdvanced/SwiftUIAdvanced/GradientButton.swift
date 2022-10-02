//
//  GradientButton.swift
//  SwiftUIAdvanced
//
//  Created by Vladimir Fibe on 01.10.2022.
//

import SwiftUI

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

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(title: "Hi", action: {})
    }
}
