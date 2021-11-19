//
//  ContentView.swift
//  DesignCode
//
//  Created by Vladimir on 17.11.2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Group {
      VStack(alignment: .leading, spacing: 8.0) {
        Spacer()
        Image("Logo 2")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .frame(width: 26.0, height: 26.0)
          .cornerRadius(20)
          .padding(9)
          .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))

        Text("SwiftUI for iOS 15")
          .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundStyle(.linearGradient(colors: [.primary, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        Text("20 sections - 3 hours".uppercased())
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundStyle(.secondary)
        Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .foregroundColor(.secondary)
          .frame(maxWidth: .infinity, alignment: .leading)
      }
      .padding(.all, 20.0)
      .padding(.vertical, 20)
      .frame(height: 350.0)
      .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
      .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
      .overlay(
        RoundedRectangle(cornerRadius: 30, style: .continuous)
          .stroke(.linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
          .blendMode(.overlay)
      )
      .padding(.horizontal, 20)
      .background(
        Image("Blob 1")
          .offset(x: 250, y: -100)
      )
      .overlay(
        Image("Illustration 5")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 230)
          .offset(x: 32, y: -80)
      )

    }
      
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.light)
      .previewDevice("iPhone 13 Pro Max")
  }
}
