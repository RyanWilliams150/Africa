//
//  CreditsView.swift
//  Africa
//
//  Created by Ryan Williams on 2/1/24.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright © Ryan Williams
  All right reserved
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
        
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

#Preview {
    CreditsView()
}
