//
//  HexagonView.swift
//  DesignCode
//
//  Created by Vladimir Fibe on 14.08.2022.
//

import SwiftUI

struct HexagonView: View {
  var body: some View {
    Canvas { context, size in
      context.draw(Image(systemName: "hexagon.fill"), in: CGRect(origin: .zero, size: size))
    }
    .frame(width: 200, height: 212)
    .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
  }
}

struct HexagonView_Previews: PreviewProvider {
  static var previews: some View {
    HexagonView()
  }
}
