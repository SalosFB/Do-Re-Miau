//
//  PlayButton.swift
//  Do-Re-Miau
//
//  Created by found on 05/12/25.
//

import SwiftUI

struct CreateButton: View {
    let label: String
    let icon: String
    let action_status: String
    
    var body: some View {
        Button(action: {
            print("\(action_status)")
        }) {
            Label(label, systemImage: icon).imageScale(.large).foregroundStyle(.white)
        }
        .padding()
        .frame(width: 200)
        .background(Color.corBotao)
        .cornerRadius(15)
        .shadow(color: .gray, radius: 1, x: 0, y: 2)
    }
}
#Preview {
    CreateButton(label: "Play", icon: "play", action_status: "Entrando...")
}
