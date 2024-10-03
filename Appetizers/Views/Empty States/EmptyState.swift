//
//  OrderEmptyState.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 03/10/2024.
//

import SwiftUI

struct EmptyState: View {
    var imageName: String
    var message: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
               Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
            }
            .offset(CGSize(width: 0, height: -50))
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message.\nI am making too long for testing")
}
