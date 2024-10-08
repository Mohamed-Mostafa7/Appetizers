//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 17/09/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    var appetizer: Appetizer
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading,spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(Color.gray)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
