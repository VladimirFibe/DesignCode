//
//  AccountView.swift
//  DesignCode
//
//  Created by Vladimir on 24.11.2021.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    NavigationView {
      List {
        Section {
          Text("Settings")
          Text("Billing")
          Text("Help")
        }
        .listRowSeparator(.hidden)
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Account")
    }
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
