//
//  ContentView.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct ScrollViewMusicNote: View {

    let imageNames = ["notaSemibreve", "notaMinima", "notaSemiminima", "notaColcheia", "notaSemicolcheia", "notaSemifusa", "notaFusa"]

    var body: some View {
            ZStack {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(alignment: .center, spacing: 5) {
                            ForEach(imageNames, id: \.self) {imageName in
                                CreateButton(label: nil, icon: imageName, widht: 200, height: 120, cornerRadius: 0, color: nil, foregroundColor: .white, action_status: {
                                    
                                })
                            }
                        }
                        .padding(.horizontal, 70)
//                        .padding(.vertical, 5)
                    }.contentMargins(.bottom, 116, for: .scrollIndicators)

                    HStack {
                        CreateButton(label: "Voltar", icon: "backward.fill", widht: 162, height: 50, cornerRadius: 50, color: .corBackground, foregroundColor: .corBotao, action_status: {
                            print("oi")
                        })
                        CreateButton(label: "Pausar", icon: "pause.circle", widht: 162, height: 50, cornerRadius: 50, color: .corBackground, foregroundColor: .corBotao, action_status: {
                            
                        })
                        CreateButton(label: "Próximo", icon: "forward.fill", widht: 162, height: 50, cornerRadius: 50, color: .corBackground, foregroundColor: .corBotao, action_status: {
                            
                        })
                    }
                    .padding(.horizontal, 150)
                }
            }
            .frame(maxHeight: 200)
            .background(Color.corPrimaryWhite)
            .clipShape(RoundedRectangle(cornerRadius: 100))
            .padding(85)
    }
}

#Preview {
    ScrollViewMusicNote()
}
