//
//  RegisterView.swift
//  ToDoList
//
//  Created by Trevor Kim on 10/29/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        // Header
        HeaderView(title: "Register",
                   subtitle: "Start organizing!",
                   angle: -15,
                   background: .orange)
        
        // Form
        Form {
            TextField("Your Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("Your Email", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Create Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TLButton(title: "Create Account", background: .green) {
                // Attempt registration
                viewModel.register()
            }
            .padding()
        }
        .offset(y: -90)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
