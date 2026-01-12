//
//  PopupScreen.swift
//  Do-Re-Miau
//
//  Created by found on 12/12/25.
//

// 19/12/2025: Descicão do programa em: PopupView.swift
    

import SwiftUI

// Corpo da view pop-up

struct PopupView: View {
    
    var body: some View {
        NavigationStack {
            
            // Design do pop-up
            
            ZStack {
                RoundedRectangle(cornerRadius: 24)
                    .fill(.corBackground)
                    .stroke(.corBotao, lineWidth: 6)
                    .shadow(color: .gray, radius: 3, x: 0, y: 5)
                
                VStack {
                    ZStack {
                        UnevenRoundedRectangle(
                            topLeadingRadius: 24,
                            topTrailingRadius: 24
                        )
                        .fill(.corBotao)
                        .frame(width: 500, height: 100)
                        .shadow(color: .black, radius: 6, x: 0, y: 5)
                        
                            Text("Selecione o Modo de Jogo:")
                                .foregroundStyle(Color.white)
                                .fontWeight(.bold)
                                .font(.title)
                    }
                    
                    // Criação de botões do pop-up
                    
                    VStack {
                        CreateNavigationButton(destination: ContentView(), label: "Níveis", icon: nil, widht: 300, height: 50, cornerRadius: 10, color: .corBotao, foregroundColor: .white, textSize: 30, imageSize: 1,  action_status: {
                            
                        })
                        
                            .padding(.bottom)
                        
                        CreateNavigationButton(destination: TelaDeJogo1(), label: "Espaço Livre", icon: nil, widht: 300, height: 50, cornerRadius: 10, color: .corBotao, foregroundColor: .white, textSize: 30, imageSize: 1, action_status: {})
                    }
                    .padding()
                        
                }
                .padding(.bottom, 40)
            }
            .frame(maxWidth: 500, maxHeight: 170)
        }
    }
}

#Preview {
    PopupView()
}
