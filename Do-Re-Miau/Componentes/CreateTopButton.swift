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
        Button {
            print("\(action_status)")
        }label:{
            VStack {
                ZStack {
                    Circle()
                        .fill(.corBotao)
                    Image(systemName: "\(icon)")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                        .padding(30)
                }
                .frame(width: 100, height: 100)
                
                Text("\(label)")
            }
        }
    }
}

#Preview {
    CreateTopButton(label: "Play", icon: "play", action_status: "Jogando")
}
