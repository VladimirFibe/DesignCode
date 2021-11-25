//
//  AccountView.swift
//  DesignCode
//
//  Created by Vladimir on 24.11.2021.
//

import SwiftUI

struct AccountView: View {
  @State var showWebsite = true
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
          NavigationLink(destination: ContentView()) {
            Label("Settings", systemImage: "gear")
          }
          NavigationLink {
            Text("Billing")
          } label: {
             Label("Billing", systemImage: "creditcard")
          }

          NavigationLink { Text("Help")} label: {
            Label("Help", systemImage: "questionmark")
          }
        }
        .listRowSeparator(.hidden)
        Section {
          if showWebsite {
            Link(destination: URL(string: "https://apple.com")!) {
              HStack {
                Label("Website", systemImage: "house")
                Spacer()
                Image(systemName: "link")
                  .foregroundColor(.secondary)
              }
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false) {
              Button {
                showWebsite = false
              } label: {
                Label("Delete", systemImage: "trash")
              }
              .tint(.red)
              Button {
                
              } label: {
                Label("pin", systemImage: "pin")
              }
              .tint(.yellow)
            }
          }
          Link(destination: URL(string: "https://youtube.com")!) {
            HStack {
              Label("Youtube", systemImage: "tv")
              Spacer()
              Image(systemName: "link")
                .foregroundColor(.secondary)
            }
          }
        }
        .listRowSeparator(.hidden)
      }
      .accentColor(.primary)
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
