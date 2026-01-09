//
//  ScoreMusicView.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

struct ScoreMusicView: View {
    @State var numeroDeCasas = 0
    //    @State lazy var tamanhoCasas: CGFloat = (263/CGFloat(numeroDeCasas))
    var body: some View {
        VStack{
            ZStack(alignment: .leading) {
                Partitura()
                
                GridButtonInvisible(
                    numeroDeCasas: numeroDeCasas,
                    tamanhoCasas: 263/CGFloat(numeroDeCasas)
                )
            }
            //            .offset(x: 50, y: 0)
            HStack {
                Button("Nota 1") {
                    numeroDeCasas = 1
                }
                .buttonStyle(.borderedProminent)
                
                Button("Nota 2") {
                    numeroDeCasas = 2
                }
                .buttonStyle(.borderedProminent)
                
                Button("Nota 4") {
                    numeroDeCasas = 4
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}
#Preview {
    ScoreMusicView()
}
