//
//  MainView.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct MainView: View {
        var body: some View {
            NavigationStack {
                
                ZStack {
                    Color(.corBackground)
                        .ignoresSafeArea()
                    
                    VStack {
                        HStack {
//                            CreateTopButton(label: "Ajuda", icon: "questionmark", action_status: "Ajudando...")
//                            
//                            
//                            Spacer()
//                            
//                            CreateTopButton(label: "Menu", icon: "line.3.horizontal", action_status: "Menuzando...")

                            VStack{
                                CreateButton(
                                    label: nil,
                                    icon: "questionmark",
                                    widht: 100,
                                    height: 100,
                                    cornerRadius: 50,
                                    color: .corBotao,
                                    foregroundColor: .white,
                                    textSize: 20, imageSize: 0.6,
                                    action_status:{
                                    
                                    print("Ajudando...")})
                                
                                Text("Ajuda")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.corBotao)
                                    .padding(.top,4)
                                
                            }
                            
                            Spacer()
                            
                            VStack{

                                CreateButton(
                                    label: nil,
                                    icon: "square.and.arrow.up",
                                    widht: 100,
                                    height: 100,
                                    cornerRadius: 50,
                                    color: .corBotao,
                                    foregroundColor: .white,
                                    textSize: 20, imageSize: 0.6,
                                    action_status: {print("Valeu...")})
                            
                            Text("Compartilhar")
                                .fontWeight(.bold)
                                .foregroundStyle(.corBotao)
                                .padding(.top,4)
                                
                            }
//                            CreateTopButton(label: "Menu", icon: "line.3.horizontal", action_status: {print("Menuzando...")})
                            
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                        
                        Text("Dó-Ré-Miau!")
                            .font(.system(size: 180, weight: .bold, design: .serif))
                            .foregroundStyle(.white)
                            .shadow(color: .gray, radius: 1, x: 0, y: 2)
                            .lineLimit(1)
                            .padding(.horizontal)
                            .minimumScaleFactor(0.5)
                        
                        VStack {
                            
                            CreateNavigationButton(
                                destination: PopupView(),
                                label: "Jogar",
                                icon: "play.fill",
                                widht: 500,
                                height: 50,
                                cornerRadius: 15,
                                color: .corBotao,
                                foregroundColor: .white,
                                textSize: 20, imageSize: 1,
                                action_status: {
                                
                                
                            })
                            
                            CreateButton(
                                label: "Opções",
                                icon: "line.3.horizontal",
                                widht: 500,
                                height: 50,
                                cornerRadius: 15,
                                color: .corBotao,
                                foregroundColor: .white,
                                textSize: 20, imageSize: 1,
                                action_status: {
                                
                                print("Menuzando...")
                                
                            })
                            
                            CreateButton(
                                label: "Sair",
                                icon: "xmark",
                                widht: 500,
                                height: 50,
                                cornerRadius: 15,
                                color: .corBotao,
                                foregroundColor: .white,
                                textSize: 20, imageSize: 1,
                                action_status: {
                                
                                print("Saindo...")
                                
                            })

//                            CreateButton(label: "Jogar", icon: "play.fill", action_status: "Entrando...")
//                            CreateButton(label: "Opções", icon: "line.3.horizontal", action_status: "Abrindo o menu de opções...")
//                            CreateButton(label: "Sair", icon: "xmark", action_status: "Saindo...")
                        }
                        .padding(.bottom, 60)
                        
                    }
                    .padding()
                }
                
            }
        }
    }
#Preview {
    MainView()
}
