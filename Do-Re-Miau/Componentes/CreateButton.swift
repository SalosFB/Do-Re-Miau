//
//  PlayButton.swift
//  Do-Re-Miau
//
//  Created by found on 05/12/25.
//

import SwiftUI

struct CreateButton: View {
    let label: String?
    let icon: String?
    let action_status: String?
    let widht: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let color: Color?
    let foregroundColor: Color
    let borderDistance: CGFloat

    var body: some View {
        Button(action: {
            print("\(action_status)")
        }) {
            if let label , let icon {
                Label(label, systemImage: icon).imageScale(.large).foregroundStyle(.white)
            } else if let icon {
                Image(systemName: icon).resizable().scaledToFit().foregroundStyle(.white)
            } else if let label{
                Text(label).foregroundStyle(.white)
            }
        }
        .padding(borderDistance)
        .frame(maxWidth: widht,maxHeight: height)
        .background(color)
        .cornerRadius(cornerRadius)
        .shadow(color: .gray, radius: 1, x: 0, y: 2)
    }
}

#Preview {
    CreateButton(label: nil, icon: "play", action_status: "Entrando...", widht: 100, height: 100, cornerRadius: 300, color: .corBotao, foregroundColor: .corBackground, borderDistance: 20)
}
