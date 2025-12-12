//
//  Inicial.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            NavigationStack {
                
                ZStack {
                    Color(.corBackground)
                        .ignoresSafeArea()
                    
                    VStack {
                        HStack {
                            CreateTopButton(label: "Ajuda", icon: "questionmark", action_status: "Ajudando...")
                            
                            
                            Spacer()
                            
                            CreateTopButton(label: "Menu", icon: "line.3.horizontal", action_status: "Menuzando...")
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                        
                        Text("Dó-Ré-Miau!")
                            .font(.system(size: 180, weight: .bold, design: .serif))
                            .foregroundStyle(.white)
                            .shadow(color: .gray, radius: 1, x: 0, y: 2)
                        
                        VStack {
//                            CreateButton(label: "Jogar", icon: "play.fill", action_status: "Entrando...")
//                            CreateButton(label: "Opções", icon: "line.3.horizontal", action_status: "Abrindo o menu de opções...")
//                            CreateButton(label: "Sair", icon: "xmark", action_status: "Saindo...")
                        }
                        .padding(.bottom,60)
                        
                    }
                    .padding()
                }
                
            }
        }
    }
#Preview {
    ContentView()
}
