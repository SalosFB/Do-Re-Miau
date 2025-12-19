//
//  ContentView.swift
//  Do-Re-Miau
//
//  Created by User on 05/12/25.
//

import SwiftUI

struct GView: View {
    var body: some View {
        ZStack{
            Color("fundo_niveis").ignoresSafeArea()
            
            VStack {
                ZStack{
                     Image("retangulo_")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 100)
                               
                    Text ("Níveis")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                }
                
            }
            .padding(.top, -420)
           
            Group {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.pianoroxo)
                    .frame(width: 1208, height: 170)
                    .padding(.top, -200)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.pianoroxo)
                    .frame(width:400, height: 540)
                    .padding(.top,140)
                    .padding(.trailing, 920)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.pianoroxo)
                    .frame(width:1255, height: 170)
                    .padding(.top,600)
                    .padding(.trailing,66)
            }
            .padding(.leading, 80)
            
            HStack(spacing:-1){
                ForEach(0..<12, id: \.self){ _  in
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color.color)
                        .frame(width: 95, height: 365)
                        .border(Color.purple, width: 1)
                }
            }
            .padding(.top, 306)
            .padding(.leading, 80)
            
            
            
            }
        
       
    }
}

#Preview {
    GView()
}
