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
        ZStack {
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
            if viewModel.isLoading {
                loadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
