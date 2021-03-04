//
//  CoursesView.swift
//  DesignCode
//
//  Created by Vladimir Fibe on 04.03.2021.
//

import SwiftUI

struct CoursesView: View {
  @State private var show = false
  var body: some View {
    
    ZStack {
      CourseItem()
        .frame(width: 335, height: 250)
      VStack {
        if show {
          CourseItem()
            .transition(.move(edge: .leading))
            .edgesIgnoringSafeArea(.all)
        }
      }
    }
    .onTapGesture {
      withAnimation(.spring()) {
        show.toggle()
      }
    }
  }
}

struct CoursesView_Previews: PreviewProvider {
  static var previews: some View {
    CoursesView()
  }
}
