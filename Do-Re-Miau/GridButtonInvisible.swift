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

//struct GridButtonInvisible: View {
//    var body: some View {
//        ZStack {
//            HStack(spacing: 97) {
//                ForEach (0..<4, id: \.self) { index in
//                    HStack (spacing: 42){
//                        ForEach(0..<4, id: \.self) { index in
//                            VStack (spacing: 15){
//                                ForEach (0..<9, id: \.self) { index in
//                                    Circle() //Botão
//                                        .frame(width: 10, height: 10)
//                                        .foregroundStyle(Color.corBotaoInvisivel)
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}

struct GridButtonInvisible: View {
//    var gridLines: [AnyView] = []
    var body: some View {
        VStack(spacing: 0){
            ForEach(0...8, id: \.self) { index in
                HStack{
                    ZStack{
                        CreateButton(label: nil,
                                     icon: nil,
                                     widht: 1002,
                                     height: 25,
                                     cornerRadius: 0,
                                     color: .red,
                                     foregroundColor: .white,
                                     textSize: 0,
                                     imageSize: 0,
                                     action_status: {
                            
                        })
                        HStack{
                            
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
