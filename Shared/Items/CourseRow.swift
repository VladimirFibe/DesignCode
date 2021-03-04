//
//  CourseRow.swift
//  DesignCode
//
//  Created by Vladimir Fibe on 04.03.2021.
//

import SwiftUI

struct CourseRow: View {
  var body: some View {
    HStack(alignment: .top) {
      Image(systemName: "paperplane.circle.fill")
        .renderingMode(.original)
        .frame(width: 48, height: 48)
        .imageScale(.medium)
        .background(Color.white)
        .clipShape(Circle())
      VStack(alignment: .leading, spacing: 4.0) {
        Text("SwiftUI")
          .font(.subheadline)
          .bold()
        Text("Description")
          .font(.footnote)
          .foregroundColor(.secondary)
      }
      Spacer()
    }
    .font(.system(size: 34, weight: .bold, design: .rounded))
  }
}

struct CourseRow_Previews: PreviewProvider {
  static var previews: some View {
    CourseRow()
  }
}
