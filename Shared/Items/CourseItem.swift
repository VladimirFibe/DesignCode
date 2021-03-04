//
//  CourseItem.swift
//  DesignCode
//
//  Created by Vladimir Fibe on 04.03.2021.
//

import SwiftUI

struct CourseItem: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 4.0) {
      Spacer()
      HStack {
        Spacer()
        Image("Illustration 1")
          .resizable()
          .aspectRatio(contentMode: .fit)
        Spacer()
      }
      Text("SwiftUI for iOS 14")
        .fontWeight(.bold)
      
      Text("20 section")
        .font(.footnote)
    }
    .foregroundColor(.white)
    .padding(.all)
    .background(Color.blue)
    .cornerRadius(20.0)
    .shadow(radius: 10)
  }
}

struct CourseItem_Previews: PreviewProvider {
  static var previews: some View {
    CourseItem()
  }
}
