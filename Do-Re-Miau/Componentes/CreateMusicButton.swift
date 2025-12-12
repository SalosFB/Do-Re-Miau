//
//  SwiftUIView.swift
//  Do-Re-Miau
//
//  Created by User on 12/12/25.
//

import SwiftUI

struct CreateMusicButton: View {
    let label: String
    let icon: String
    let action_status: String

    var body: some View {
        Button(action: {
            print("\(action_status)")
        }) {
            Label(label, systemImage: icon)
                .imageScale(.large)
                .foregroundStyle(.corBotao)
        }
        .padding()
        .frame(height: 50)
        .frame(minWidth: 140)
        .background(Color.corBackground)
        .cornerRadius(50)
        .shadow(color: .gray, radius: 1, x: 0, y: 2)
    }
}

#Preview {
    CreateMusicButton(label: "Pausar Música", icon: "forward.fill", action_status: "teste")
}
