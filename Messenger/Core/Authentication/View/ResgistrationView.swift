//
//  ResgistrationView.swift
//  Messenger
//
//  Created by Aram on 08.05.24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
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
                    TextField("Enter your email..", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    
                    TextField("Enter your fullname..", text: $fullname)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                     
                    SecureField("Enter your password..", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
                .padding()
                
                // Login button
                Button{
                    print("Handle Login")
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
