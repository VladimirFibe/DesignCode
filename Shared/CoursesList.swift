//
//  CoursesList.swift
//  DesignCode
//
//  Created by Vladimir Fibe on 04.03.2021.
//

import SwiftUI

struct CoursesList: View {
  @ViewBuilder
  var body: some View {
    #if os(iOS)
    content
      .listStyle(InsetGroupedListStyle())
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {}) {
            Image(systemName: "person.crop.circle")
          }
        }
      }
    #else
    content
      .frame(minWidth: 800, minHeight: 600)
      .toolbar {
        ToolbarItem(placement: .automatic) {
          Button(action: {}) {
            Image(systemName: "person.crop.circle")
          }
        }
      }
    #endif
  }
  var content: some View {
    List {
      ForEach(0 ..< 20) { item in
        CourseRow()
      }
    }
    .navigationTitle("Courses")
  }
  
}

struct CoursesList_Previews: PreviewProvider {
  static var previews: some View {
    CoursesList()
  }
}
