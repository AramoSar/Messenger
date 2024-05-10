//
//  ProfileView.swift
//  Messenger
//
//  Created by Aram on 10.05.24.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            // header
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
    
                Text("Bruce Wayne")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            
            // list
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                    
                }
                
                Section {
                    Button("Log Out") {
                        
                    }
                    
                    Button("Dlete Account") {
                        
                    }
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
