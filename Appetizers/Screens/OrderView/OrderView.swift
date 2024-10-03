//
//  OrderView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
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
                        print("Place Order Button Pressed")
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
            .navigationTitle("Order")
            
        }
    }
}

#Preview {
    OrderView()
}
