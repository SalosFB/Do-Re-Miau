//
//  PopupScreen.swift
//  Do-Re-Miau
//
//  Created by found on 12/12/25.
//

import SwiftUI

struct PopupScreen: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 24)
                    .fill(.corBackground)
                    .stroke(.corBotao, lineWidth: 6)
                
                VStack {
                    ZStack {
                        UnevenRoundedRectangle(
                            topLeadingRadius: 24,
                            topTrailingRadius: 24
                        )
                        .fill(.corBotao)
                        .frame(width: 500, height: 100)
                        HStack {
                            Text("Selecione o Modo de Jogo:")
                                .foregroundStyle(Color.white)
                                .fontWeight(.bold)
                                .font(.title)
                            
                            Button {
                            
                            } label: {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(.red)
                                        Image(systemName: "xmark")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundStyle(.corBackground)
                                            .padding(15)
                                            .padding(.leading, 5)
                                    }
                                    .frame(width: 60, height: 60)
                                }
                            }
                        }
                    }
                    
                    VStack {
                        CreateButton(label: "Desafios", icon: "play", action_status: "Play...")
                        CreateButton(label: "Espaço Livre", icon: "play", action_status: "Espaço Livre...")
                    }
                        
                }
                .padding(.bottom, 40)
            }
            .frame(maxWidth: 500, maxHeight: 170)
        }
    }
}

#Preview {
    PopupScreen()
}
