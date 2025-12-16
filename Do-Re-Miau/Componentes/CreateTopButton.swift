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
<<<<<<< HEAD
    let action_status: String
    
    var body: some View {
        Button {
            print("\(action_status)")
=======
    let action_status: () -> Void
    
    var body: some View {
        Button {
            action_status()
>>>>>>> origin/Feature/buttons-and-home-view
        }label:{
            VStack {
                ZStack {
                    Circle()
                        .fill(.corBotao)
                    Image(systemName: "\(icon)")
                        .resizable()
                        .scaledToFit()
<<<<<<< HEAD
                        .foregroundStyle(.corBackground)
=======
                        .foregroundStyle(.white)
>>>>>>> origin/Feature/buttons-and-home-view
                        .padding(30)
                }
                .frame(width: 100, height: 100)
                
                Text("\(label)")
                .fontWeight(.bold)
                .foregroundStyle(.corBotao)
                .padding(.top, 4)
            }
        }
    }
}

#Preview {
<<<<<<< HEAD
    CreateTopButton(label: "Play", icon: "play", action_status: "Jogando")
=======
    CreateTopButton(label: "Play", icon: "play", action_status: {print("Jogando")})
>>>>>>> origin/Feature/buttons-and-home-view
}
