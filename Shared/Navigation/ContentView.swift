//
//  ContentView.swift
//  Shared
//
//  Created by Vladimir Fibe on 03.03.2021.
//

import SwiftUI

struct ContentView: View {
  @ViewBuilder
  var body: some View {
    #if os(iOS)
    SideBar()
    #else
    SideBar()
      .frame(minWidth: 1000, minHeight: 600)
    #endif
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
