//
//  AuthService.swift
//  Messenger
//
//  Created by Aram on 11.05.24.
//

import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: login with email \(email)")
        print("DEBUG: login with password \(password)")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
}
