//
//  LoginViewModel.swift
//  Messenger
//
//  Created by Aram on 11.05.24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
