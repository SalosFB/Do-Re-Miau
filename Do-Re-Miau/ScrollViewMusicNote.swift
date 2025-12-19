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
                        HStack(alignment: .center, spacing: 30) {
                            ForEach(imageNames, id: \.self) {imageName in
                                Image(imageName)
                            }
                        }
                        .padding(.horizontal, 280)
                        .padding(.vertical, 5)
                    }.contentMargins(.bottom, 116, for: .scrollIndicators)

                    HStack {
                        CreateMusicButton(label: "Voltar", icon: "backward.fill", action_status: "Voltar")
                        CreateMusicButton(label: "Pausar", icon: "pause.circle", action_status: "Pausado")
                        CreateMusicButton(label: "Próximo", icon: "forward.fill", action_status: "Próximo")
                    }
                    .padding(.horizontal, 200)
                    .padding(.bottom, 5)
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
