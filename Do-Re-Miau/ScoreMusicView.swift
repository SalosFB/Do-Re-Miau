//
//  ScoreMusicView.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

struct ScoreMusicView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Partitura()
            GridButtonInvisible()
                .offset(x: 50, y: 0)
        }
    }
}

#Preview {
    ScoreMusicView()
}
