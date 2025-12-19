//
//  CreateButton.swift
//  Do-Re-Miau
//
//  Created by found on 05/12/25.
//

import SwiftUI

struct CreateButton: View {
    
//    let label: String
//    let icon: String
//    let action_status: String
//    
//    var body: some View {
//        Button(action: {
//            print("\(action_status)")
//        }) {
//            Label(label, systemImage: icon).imageScale(.large).foregroundStyle(.white)
//        }
//        .padding()
//        .frame(width: 200)
//        .background(Color.corBotao)
//        .cornerRadius(15)
//        .shadow(color: .gray, radius: 1, x: 0, y: 2)
//    }
//}
//#Preview {
//    CreateButton(label: "Play", icon: "play", action_status: "Entrando...")

//  =======================================================
    
// 19/12/2025: Descicão do programa em: CreateButton.swift
    
    // Criacão dos atrbutos do botão
    
    let label: String?
    let icon: String?
    @State var widht: CGFloat
    @State var height: CGFloat
    let cornerRadius: CGFloat
    let color: Color?
    let foregroundColor: Color
    let textSize: CGFloat
    let imageSize: CGFloat
    let action_status: () -> Void

    // Corpo da view, com a definição do design do botão
    
    var body: some View {
        
        Button(action: action_status) {
            
            // Forma do botão
            
            ZStack{
                
                Rectangle()
                    .fill(Color(color ?? Color.corBotao))
                    .frame(width: widht, height: height)
                    .cornerRadius(cornerRadius)
                    .shadow(color: .gray, radius: 1, x: 0, y: 2)
                
                // Conteúdo do botão dividido em if clauses, permitindo que o usuário possa editar nomes e/ou imagens Swift
                
                if let label , let icon {
                    
                    Label(label, systemImage: icon)
                        .imageScale(.large)
                        .foregroundStyle(.white)
                        .font(.system(size: textSize))
                        .lineLimit(1)
                    
                } else if let icon {
                    
                    if UIImage(systemName: icon) != nil {
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)
                            .scaleEffect(imageSize)
                        
                    } else {
                        
                        Image(icon)
                            .foregroundStyle(.white)
                    }
                    
                }  else if let label{
                    Text(label)
                        .foregroundStyle(.white)
                        .font(.system(size: textSize))
                        .lineLimit(1)
                }
            }
        }
        .frame(width: widht, height: height)
        
        
    }
}

// Visualização do botão

#Preview {
    CreateButton(
        label: "play",
        icon: "play.fill",
        widht: 300,
        height: 300,
        cornerRadius: 50,
        color: .corBotao,
        foregroundColor: .white,
        textSize: 60,
        imageSize: 0.7,
        action_status: {
        
    })
}
