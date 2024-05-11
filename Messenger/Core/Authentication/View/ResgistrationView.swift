//
//  ResgistrationView.swift
//  Messenger
//
//  Created by Aram on 08.05.24.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // logo image
                Image(.messengerLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                // text fields
                VStack {
                    TextField("Enter your email..", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    
                    TextField("Enter your fullname..", text: $viewModel.fullname)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                     
                    SecureField("Enter your password..", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                .padding()
                
                // Login button
                Button{
                    Task { try await viewModel.createUser() }
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                Spacer()
                
                // sign up link
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Text("Don't have an account?")
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
                
                
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
