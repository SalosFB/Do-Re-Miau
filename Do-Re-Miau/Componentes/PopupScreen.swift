//
//  PopupScreen.swift
//  Do-Re-Miau
//
//  Created by found on 12/12/25.
//

// 19/12/2025: Descicão do programa em: PopupScreen.swift
    

import SwiftUI

// Corpo da view pop-up

struct PopupScreen: View {
    
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
                    
                    VStack {
                        CreateButton(label: "Níveis", icon: nil, widht: 300, height: 50, cornerRadius: 10, color: .corBotao, foregroundColor: .white, textSize: 30, imageSize: 0.5, action_status: {})
                        
                            .padding(.bottom)
                        
                        CreateButton(label: "Espaço Livre", icon: nil, widht: 300, height: 50, cornerRadius: 10, color: .corBotao, foregroundColor: .white, textSize: 30, imageSize: 0.3, action_status: {})
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
    PopupScreen()
}
