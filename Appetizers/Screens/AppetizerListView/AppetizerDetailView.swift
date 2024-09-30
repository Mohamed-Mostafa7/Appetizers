//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 29/09/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    DetailVStack(name: "Calories", value: "\(appetizer.calories)")
                    DetailVStack(name: "Carbs", value: "\(appetizer.carbs)")
                    DetailVStack(name: "Protein", value: "\(appetizer.protein)")
                }
                
            }
            
            Spacer()

            Button {
                print("Tapped")
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.white))
                    .frame(width: 260, height: 50)
                    .background(Color(.brandPrimary))
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            }
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
        .shadow(radius: 40)
        .overlay(Button(action: {
            print("dismiss tapped")
            isShowingDetail = false
        }, label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .foregroundStyle(.black)
                    .frame(width: 44, height: 44)
            }
            .padding(5)
            
        }),alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(false))
}

struct DetailVStack: View {
    var name: String
    var value: String
    var body: some View {
        VStack(spacing: 5) {
            Text(name)
                .bold()
                .font(.caption)
            Text(value)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
