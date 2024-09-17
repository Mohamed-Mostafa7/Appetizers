//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
