//
//  OrderView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State var isSubmitted = false
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        withAnimation(.spring) {
                            isSubmitted = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                            isSubmitted = false
                            order.items.removeAll()
                        }
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(25)
                    
                }
                
                if order.items.isEmpty {
                    
                    EmptyState(imageName: "empty-order",
                               message: "You have no item in your order.\nPlease add an appetizer!")
                    
                }
            }
            .overlay{
                if isSubmitted {
                    OrderSubmittedView()
                }
            }
            .navigationTitle("Order")
            
        }
    }
}

#Preview {
    OrderView()
}

// MARK: - This Check mark appears after the user confirms the order
struct OrderSubmittedView: View {
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .foregroundStyle(.brandPrimary)
                .frame(width: 100, height: 100)
                
            Text("Order Submitted")
                .font(.title2)
                .fontWeight(.semibold)
                
        }
        .frame(width: 200, height: 200)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 12, height: 12)))
        .shadow(radius: 20)
        .offset(CGSize(width: 0, height: -30))
    }
}
