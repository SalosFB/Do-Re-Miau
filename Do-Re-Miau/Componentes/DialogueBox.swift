//
//  DialogueBox.swift
//  Do-Re-Miau
//
//  Created by found on 19/12/25.
//

import SwiftUI

struct DialogueBox: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            Color.corDeFundo
            ScoreMusicView()
        }.ignoresSafeArea(.all)
    }
}

#Preview {
    DialogueBox()
}
