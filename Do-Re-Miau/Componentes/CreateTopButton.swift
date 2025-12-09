//
//  CreateTopButton.swift
//  Do-Re-Miau
//
//  Created by found on 05/12/25.
//

import SwiftUI

struct CreateTopButton: View {
    let label: String
    let icon: String
    let action_status: String
    
    var body: some View {
        Button(action: {
            print("\(action_status)")
        }) {
            Label(label, systemImage: icon)
                .imageScale(.large)
                .foregroundStyle(.corBackground)
                .fontWeight(.bold)
        }
        .labelStyle(.iconOnly)
        .padding()
        .frame(width: 70, height: 70)
        .background(Color.corBotao)
        .cornerRadius(35)
        .shadow(color: .gray, radius: 1, x: 0, y: 2)
        .background {
            Text("\(label)")
                .offset(y: 59)
                .foregroundStyle(.corBotao)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    CreateTopButton(label: "Play", icon: "play", action_status: "Jogando")
}
