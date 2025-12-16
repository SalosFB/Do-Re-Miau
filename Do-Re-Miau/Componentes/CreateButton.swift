//
//  PlayButton.swift
//  Do-Re-Miau
//
//  Created by found on 05/12/25.
//

import SwiftUI

struct CreateButton: View {
    
//    let label: String
//    let icon: String
//    let action_status: String
//    
//    var body: some View {
//        Button(action: {
//            print("\(action_status)")
//        }) {
//            Label(label, systemImage: icon).imageScale(.large).foregroundStyle(.white)
//        }
//        .padding()
//        .frame(width: 200)
//        .background(Color.corBotao)
//        .cornerRadius(15)
//        .shadow(color: .gray, radius: 1, x: 0, y: 2)
//    }
//}
//#Preview {
//    CreateButton(label: "Play", icon: "play", action_status: "Entrando...")

    let label: String?
    let icon: String?
    let widht: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let color: Color?
    let foregroundColor: Color
    let action_status: () -> Void
    var body: some View {
        Button(action: action_status) {
            if let label , let icon {
                Label(label, systemImage: icon).imageScale(.large).foregroundStyle(.white)
            } else if let icon {
                if UIImage(systemName: icon) != nil{
                    Image(systemName: icon).resizable().scaledToFit().foregroundStyle(.white)
                } else {
                    Image(icon).resizable().scaledToFit().foregroundStyle(.white)
                }
                
            }  else if let label{
                Text(label).foregroundStyle(.white)
            }
        }
        .padding(30)
        .frame(maxWidth: widht,maxHeight: height)
        .background(color)
        .cornerRadius(cornerRadius)
        .shadow(color: .gray, radius: 1, x: 0, y: 2)
    }
}

#Preview {
    CreateButton(label: nil, icon: "play", widht: 100, height: 100, cornerRadius: 50, color: .corBotao, foregroundColor: .white, action_status: {
        print("play")
    })
}
