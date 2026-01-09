//
//  DialogueBox.swift
//  Do-Re-Miau
//
//  Created by found on 19/12/25.
//
//
//import SwiftUI
//
//struct DialogueBox<ButtonContent: View>: View {
//    let labelPersonagem: String
//    let dialogoAtual: String
//    @ViewBuilder let createButton: () -> ButtonContent
//
//    var body: some View {
//        ZStack {
//            Color.white.ignoresSafeArea()
//            VStack{
//                HStack {
//                    ZStack {
//                        Color.corBotao.ignoresSafeArea()
//                        Text(labelPersonagem)
//                            .font(.system(size: 20))
//                            .foregroundStyle(Color.white)
//                    }.clipShape(RoundedRectangle(cornerRadius: 40))
//                        .frame(width: 100, height: 35) //width está fixo
//                    Spacer()
//                } .padding(20)
//                Spacer()
//                Text(dialogoAtual)
//                Spacer()
//                HStack {
//                    Spacer()
//                    createButton()
//                } .padding(20)
//            }
//        }
//        .frame(height: 200)
//        .clipShape(RoundedRectangle(cornerRadius: 40))
//    }
//}
//    #Preview {
//        DialogueBox(labelPersonagem: "nome", dialogoAtual: "oi", createButton: {
//            CreateButton(label: "aaa", icon: "", widht: 100, height: 50, cornerRadius: 40, color: Color.black, foregroundColor: Color.white, textSize: 20, imageSize: 0, action_status: () -> Void)
//        })
//    }
