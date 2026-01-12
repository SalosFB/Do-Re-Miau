//
//  ContentView.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct ScrollViewMusicNote: View {
    
    let imageNames = ["nota_Semibreve", "nota_Minima", "nota_Seminima", "nota_Colcheia", "nota_Semicolcheia", "nota_Semifusa", "nota_Fusa"]
    
    var body: some View {
        NavigationStack{
            ZStack {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(alignment: .center, spacing: 10) {
                            ForEach(imageNames, id: \.self) {imageName in
                                Image(imageName)
                                    .scaleEffect(0.6)
                            }
                        }
                        .padding(.horizontal, 280)
                        .padding(.vertical, 5)
                    }.contentMargins(.bottom, 116, for: .scrollIndicators)
                    
                    HStack {
                        CreateNavigationButton(
                            destination: PopupView(),
                            label: "Voltar",
                            icon: "backward.fill",
                            widht: 150,
                            height: 50,
                            cornerRadius: 25,
                            color: .corBackground,
                            foregroundColor: .corBotao,
                            textSize: 20, imageSize: 1,
                            action_status: {
                                
                                
                            })
                        
                        CreateNavigationButton(
                            destination: PopupView(),
                            label: "Pausar",
                            icon: "pause.circle.fill",
                            widht: 150,
                            height: 50,
                            cornerRadius: 25,
                            color: .corBackground,
                            foregroundColor: .corBotao,
                            textSize: 20, imageSize: 1,
                            action_status: {
                                
                                
                            })
                        
                        CreateNavigationButton(
                            destination: PopupView(),
                            label: "Próximo",
                            icon: "forward.fill",
                            widht: 150,
                            height: 50,
                            cornerRadius: 25,
                            color: .corBackground,
                            foregroundColor: .corBotao,
                            textSize: 20, imageSize: 1,
                            action_status: {
                                
                                
                            })
                    }
                    .padding(.horizontal, 200)
                    .padding(.bottom, 5)
                }
            }
            .frame(maxHeight: 250)
            .background(Color.corPrimaryWhite)
            .clipShape(RoundedRectangle(cornerRadius: 125))
            .padding(85)
        }
    }
}

#Preview {
    ScrollViewMusicNote()
}
