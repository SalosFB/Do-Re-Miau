//
//  Partitura.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

struct Partitura: View {
    var body: some View {
        ZStack {
            HStack(spacing: 50) {
                ForEach (0..<4, id: \.self) {index in
                    Rectangle()
                        .frame(width: 5, height: 205)
                        .foregroundStyle(Color.corPrimariaPartitura)
                    ForEach(0..<4, id: \.self) { index in
                        Rectangle()
                            .frame(width: 2, height: 205)
                            .foregroundStyle(Color.corSecundariaPartitura)
                    }
                }
            }
            VStack (spacing: 45){
                ForEach (0..<5, id: \.self) { index in
                    Rectangle()
                        .frame(width: 1000, height: 5)
                        .foregroundStyle(Color.corPrimariaPartitura)
                }
            }
        }.frame(width: 1000, height: 205)
    }
}


#Preview {
    Partitura()
}
