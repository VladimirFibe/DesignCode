//
//  AccountView.swift
//  DesignCode
//
//  Created by Vladimir on 24.11.2021.
//

import SwiftUI

struct AccountView: View {
  @State var showWebsite = true
  @State var isPinned = false
  var body: some View {
    NavigationView {
      List {
        profile
        
        menu
        
        links
      }
      .accentColor(.primary)
      .listStyle(.insetGrouped)
      .navigationTitle("Account")
    }
  }
  var profile: some View {
    VStack(spacing: 8.0) {
      Image(systemName: "person.crop.circle.fill.badge.checkmark")
        .font(.system(size: 32))
        .symbolRenderingMode(.palette)
        .foregroundStyle(.blue, .blue.opacity(0.3))
        .padding()
        .background(Circle().fill(.ultraThinMaterial))
        .background(
          BlobView().frame(width: 400, height: 414).offset(x: 200).scaleEffect(0.5)
        )
        .background(
          HexagonView()
            .offset(x: -50, y: -100)
        )
      Text("Meng To")
        .font(.title.weight(.semibold))
      HStack {
        Image(systemName: "location")
          .imageScale(.large)
        Text("Canada")
          .foregroundColor(.secondary)
      }
    }
    .frame(maxWidth: .infinity)
    .padding()
  }
  var menu: some View {
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
  }
  var links: some View {
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
          deleteButton
          pinButton
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
      .swipeActions {
        pinButton
      }
    }
    .listRowSeparator(.hidden)
  }
  var deleteButton: some View {
    Button {
      showWebsite = false
    } label: {
      Label("Delete", systemImage: "trash")
    }
    .tint(.red)
  }
  var pinButton: some View {
    Button {
      isPinned.toggle()
    } label: {
      Label("Pin", systemImage: isPinned ? "pin.slash" : "pin")
    }
    .tint(isPinned ? .gray : .yellow)
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
