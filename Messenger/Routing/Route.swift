//
//  Rout.swift
//  Messenger
//
//  Created by Aram on 15.05.24.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
