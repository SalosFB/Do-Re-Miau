//
//  g_Testeniveis2.swift
//  Do-Re-Miau
//
//  Created by user on 16/12/25.
//

import SwiftUI

struct ContentView: View {
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
            
            Image("niveis")
                .resizable()
                .scaledToFit()
                .frame(maxWidth:.infinity)
                .padding(.horizontal)
                .padding(.top, 2)
        }
        
       
    }
}

#Preview {
    ContentView()
}
