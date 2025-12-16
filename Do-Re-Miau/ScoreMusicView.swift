//
//  ScoreMusicView.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

struct ScoreMusicView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 60) {
                Rectangle()
                    .frame(width: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
                Rectangle()
                    .frame(width: 2)
                    .foregroundStyle(Color.corSecundariaPartitura)
                Rectangle()
                    .frame(width: 2)
                    .foregroundStyle(Color.corSecundariaPartitura)
                Rectangle()
                    .frame(width: 2)
                    .foregroundStyle(Color.corSecundariaPartitura)
                Rectangle()
                    .frame(width: 2)
                    .foregroundStyle(Color.corSecundariaPartitura)
            }
            VStack (spacing: 45){
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.corPrimariaPartitura)
            }


        }
    }
}

#Preview {
    ScoreMusicView()
}
