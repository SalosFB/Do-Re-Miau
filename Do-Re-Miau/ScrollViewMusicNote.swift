//
//  ContentView.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct ScrollViewMusicNote: View {

    let imageNames = ["notaSemibreve", "notaMinima", "notaSemiminima", "notaColcheia", "notaSemicolcheia", "notaSemifusa", "notaFusa", "notaSemibreve", "notaMinima", "notaSemiminima", "notaColcheia", "notaSemicolcheia", "notaSemifusa", "notaFusa"]

    var body: some View {
        ZStack {
            Color.blue
            ZStack {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(alignment: .center, spacing: 30) {
                            ForEach(imageNames, id: \.self) {imageName in
                                Image(imageName)
                            }
                        }
                        .padding(.horizontal, 280)
                        .padding(.vertical, 50)
                    }.contentMargins(.bottom, 200, for: .scrollIndicators)

                    HStack {
                        Spacer()
                        Text("Botao")
                        Text("Botao")
                    }
                    .padding(.top, 100)
                    .padding(.horizontal, 200)
                }
            }
            .frame(height: 350)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 200))
            .padding(85)

        }
    }
}

#Preview {
    ScrollViewMusicNote()
}
