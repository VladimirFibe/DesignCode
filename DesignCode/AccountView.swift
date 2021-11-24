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
        VStack {
          Image(systemName: "person.crop.circle.fill.badge.checkmark")
            .font(.system(size: 32))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .blue.opacity(0.3))
            .padding()
            .background(Circle().fill(.ultraThinMaterial))
            .background(
              Image(systemName: "hexagon")
                .symbolVariant(.fill)
                .foregroundColor(.blue)
                .font(.system(size: 200))
                .offset(x: -50, y: -100)
            )
          Text("Meng To")
          HStack {
            Image(systemName: "location")
              .imageScale(.large)
            Text("Canada")
              .foregroundColor(.secondary)
          }
        }
        .frame(maxWidth: .infinity)
        .padding()
        
        Section {
          Label("Settings", systemImage: "gear")
          Label("Billing", systemImage: "creditcard")
          Label("Help", systemImage: "questionmark")
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
