//
//  GridInvisible.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

extension Color {
    static let corBotaoInvisivel = Color.blue //Color.clear -> invisivel
}

struct GridButtonInvisible: View {
    var body: some View {
        ZStack {
            HStack(spacing: 97) {
                ForEach (0..<4, id: \.self) { index in
                    HStack (spacing: 42){
                        ForEach(0..<4, id: \.self) { index in
                            VStack (spacing: 15){
                                ForEach (0..<9, id: \.self) { index in
                                    Circle() //Botão
                                        .frame(width: 10, height: 10)
                                        .foregroundStyle(Color.corBotaoInvisivel)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GridButtonInvisible()
}
