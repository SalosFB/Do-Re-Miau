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
    let numeroDeCasas: Int
    let tamanhoCasas: CGFloat
    var body: some View {
        VStack(spacing: 0){
            ForEach(0..<13, id: \.self){ index in
                HStack (spacing: 0){
                    ForEach(0..<3, id: \.self){ index in
                        HStack(spacing: 0){
                            ForEach(0..<numeroDeCasas, id:\.self) { _ in
                                Button(action:{}){
                                    Color.gray
                                        .opacity(0.6)
                                        .frame(width: tamanhoCasas, height: 25)
                                            
                                }
                                .border(.green)
                            }
                        }
                    }
                    .border(.blue)
                }
            }
            .border(.pink)
        }
    }
//        .border(.green)
//        .onChange(of: numeroDeCasas) { oldValue, newValue in
//            print(newValue)
        }
        
        
//        VStack(spacing: 0){
//            ForEach(0...12, id: \.self) { index in
//                HStack{
//                    ZStack{
//                        CreateButton(label: nil,
//                                     icon: nil,
//                                     widht: 1002,
//                                     height: 25,
//                                     cornerRadius: 0,
//                                     color: nil,
//                                     foregroundColor: .white,
//                                     textSize: 0,
//                                     imageSize: 0,
//                                     action_status: {print(index)
//                            
//                        })
//                    HStack{
//                            
//                    }
//                        
//                    }
//                }
//            }
//        }


//#Preview {
//    CreateButton(
//        label: "play",
//        icon: "play.fill",
//        widht: 300,
//        height: 300,
//        cornerRadius: 50,
//        color: .corBotao,
//        foregroundColor: .white,
//        textSize: 60,
//        imageSize: 0.7,
//        action_status: {
//        
//    })
//}

#Preview {
    GridButtonInvisible(
        numeroDeCasas: 2,
        tamanhoCasas: 263
        )
}
