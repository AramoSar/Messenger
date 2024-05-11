//
//  InboxRowView.swift
//  Messenger
//
//  Created by Aram on 08.05.24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
            VStack(alignment: .leading) {
                Text("Heat Ledger")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Some test message for now")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            Spacer()
            
            HStack {
                Text("Yesterday")
                    
                
                Image(systemName: "chevron.right")
                    .imageScale(.small)
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
