//
//  CreateNavigationButton.swift
//  Do-Re-Miau
//
//  Created by found on 19/12/25.
//

// =========================================================

// 19/12/2025: Descicão do programa em: CreateNavigationButton.swift
    
    // Criacão dos atrbutos do botão tipo Navigation Link, para navegacão entre telas

import SwiftUI

struct CreateNavigationButton<Destination: View>: View { // definindo que a View redirecionará para outra View
    
    // Criação de atributos, semelhantes aos do botão, com a adição do atributo 'destination'
    
    let destination: Destination // -> Atributo para a View de destino
    let label: String?
    let icon: String?
    let widht: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let color: Color?
    let foregroundColor: Color
    let textSize: CGFloat
    let imageSize: CGFloat
    let action_status: () -> Void

    // Corpo do botão de navegação
    
    var body: some View {
        
        
        NavigationLink(destination: destination) {
            
            // Forma do botão
            
            ZStack{
                
                if let color {
                    Rectangle()
                        .fill(Color(color))
                        .frame(width: widht, height: height)
                        .cornerRadius(cornerRadius)
                        .shadow(color: .gray, radius: 1, x: 0, y: 2)
                } else {
                    Rectangle()
                        .opacity(0)
                        .frame(width: widht, height: height)
                        .cornerRadius(cornerRadius)
                        .shadow(color: .gray, radius: 1, x: 0, y: 2)
                }
                
                // Conteúdo do botão de navegação dividido em if clauses, permitindo que o usuário possa editar nomes e/ou imagens Swift
                
                if let label , let icon {
                    
                    Label(label, systemImage: icon)
                        .imageScale(.large)
                        .foregroundStyle(foregroundColor)
                        .font(.system(size: textSize))
                        .lineLimit(1)
                    
                } else if let icon {
                    
                    if UIImage(systemName: icon) != nil {
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(foregroundColor)
                            .scaleEffect(imageSize)
                        
                    } else {
                        
                        Image(icon).foregroundStyle(foregroundColor)
                    }
                    
                }  else if let label{
                    Text(label)
                        .foregroundStyle(.white)
                        .font(.system(size: textSize))
                        .lineLimit(1)
                }
            }
        }
        
    }
}

// Visualização do botão

#Preview {
    CreateNavigationButton(
        destination: PopupView(),
        label: nil,
        icon: "play.fill",
        widht: 300,
        height: 300,
        cornerRadius: 50,
        color: nil,
        foregroundColor: .black,
        textSize: 60,
        imageSize: 0.7,
        action_status: {
            print("Entrando em uma nova tela...")
    })
}
