//
//  APButton.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 01/10/2024.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.systemBackground))
            .frame(width: 260, height: 50)
            .background(Color(.brandPrimary))
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
    }
}

#Preview {
    APButton(title: "Button")
}
