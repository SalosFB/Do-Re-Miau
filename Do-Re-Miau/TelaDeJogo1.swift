//
//  TelaDeJogo1.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct TelaDeJogo1: View {
    var body: some View {
        
        
        ZStack {
            Color(.corDeFundo)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    //Botão
                    Circle()
                        .frame(height: 80)
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.amareloBarraDeTarefas)
                            .frame(maxHeight: 80)
                            .padding(.horizontal)
                        
                        Text("SOL LA SI DO DO RE MI")
                            .font(.largeTitle)
                            .padding()
//                            .background()
                            
                    }
                    
                    Spacer()
                        
                    Circle()
                        .frame(height: 80)
                    
                    
                    Circle()
                        .frame(height: 80)
                }
                .padding()

                
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                    .frame(maxHeight: 620)
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(.white)
                    .frame(maxHeight: 201)
                    .padding(.top)
                    .overlay (
                        HStack {
                            //Botão
                            
                            //Titulo
                            
                            //Botão
                            
                            //Botão
                        }
                    )
            }
            .padding(.horizontal, 60)
        }
        
        
//        VStack(alignment: .center) {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.amareloBarraDeTarefas)
//                .frame(height: 80)
//                .padding(.horizontal, 250)
//                .padding(.vertical, 10)
//            RoundedRectangle(cornerRadius: 40)
//                .fill(Color.brancoConfortavel)
//                .padding(.horizontal, 145)
//                .frame(height: 500)
//            RoundedRectangle(cornerRadius: 200)
//                .fill(Color.brancoConfortavel)
//                .frame(height: 300)
//                .padding(.horizontal, 80)
//                .padding(.vertical, 10)
//                .frame(height: 200, alignment: .top)
//        }
//        .frame(height: 900)
//        .background(Color.corDeFundo)
    }
}


#Preview {
    TelaDeJogo1()
}
