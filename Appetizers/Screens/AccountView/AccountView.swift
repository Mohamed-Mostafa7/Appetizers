//
//  AccountView.swift
//  Appetizers
//
//  Created by Mohamed Mostafa on 16/09/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                    DatePicker("Birthdy", selection: $viewModel.birthDate, displayedComponents: .date)
                    Button {
                        print("Save tapped")
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent refills", isOn: $viewModel.frequentRefills)
                }header: {
                    Text("Requests")
                }
            }
            .navigationTitle("Account")
            .toggleStyle(SwitchToggleStyle.init(tint: .brandPrimary))
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        
    }
}

#Preview {
    AccountView()
}
