//
//  OrderView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

struct OrderView: View {
    @State var orderItems = MockData.order
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Place Order Button Pressed")
                    } label: {
                        APButton(title: "$30.99 - Place order")
                    }
                    .padding(25)
                    
                }
                
                if orderItems.isEmpty {
                    
                    EmptyState(imageName: "empty-order",
                               message: "You have no item in your order.\nPlease add an appetizer!")
                    
                }
            }
            .navigationTitle("Order")
            
        }
    }
    func deleteItem(at offset: IndexSet) {
        orderItems.remove(atOffsets: offset)
        withAnimation(.easeInOut(duration: 2)) {
            if orderItems.isEmpty {
                orderItems = []
            }
        }
    }
}

#Preview {
    OrderView()
}
