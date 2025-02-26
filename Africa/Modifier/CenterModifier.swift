//
//  CenterModifier.swift
//  Africa
//
//  Created by Ryan Williams on 2/1/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
