//
//  TelaInicial.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            VStack {
                HStack {
                    CreateTopButton(label: "Ajuda", icon: "questionmark", action_status: "Ajudando...")
                    
                    Spacer()
                    
                    CreateTopButton(label: "Menu", icon: "line.3.horizontal", action_status: "Menuzando...")
                }
                .padding(.horizontal, 45)
                .frame(height: 0)
                
                Text("Dó-Ré-Miau!")
                    .font(.system(size: 180, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .shadow(color: .gray, radius: 1, x: 0, y: 2)
                CreateButton(label: "Jogar", icon: "play.fill", action_status: "Entrando...")
                CreateButton(label: "Opções", icon: "line.3.horizontal", action_status: "Abrindo o menu de opções...")
                CreateButton(label: "Sair", icon: "xmark", action_status: "Saindo...")
            }
            .frame(height: 900)
            .background(Color.corBackground)
        }
        
    }
#Preview {
    ContentView()
}
