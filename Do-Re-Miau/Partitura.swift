//
//  Partitura.swift
//  Do-Re-Miau
//
//  Created by User on 16/12/25.
//

import SwiftUI

struct Position: Hashable {
    let x: Int
    let y: Int
}

struct Partitura: View {
    
    @State var notes: [Position: String] = [:]
    
    var body: some View {
        ZStack {
            HStack(spacing: 50) {
                ForEach (0..<4, id: \.self) {index in
                    Rectangle()
                        .frame(width: 5, height: 205)
                        .foregroundStyle(Color.corPrimariaPartitura)
                    ForEach(0..<4, id: \.self) { index in
                        Rectangle()
                            .frame(width: 2, height: 205)
                            .foregroundStyle(Color.corSecundariaPartitura)
                    }
                }
            }
            VStack (spacing: 45){
                ForEach (0..<5, id: \.self) { index in
                    Rectangle()
                        .frame(width: 1000, height: 5)
                        .foregroundStyle(Color.corPrimariaPartitura)
                }
            }
        }
        .frame(width: 1000, height: 205)
//        .overlay {
//            HStack(spacing: 5) {
//                ForEach(0..<15) { x in
//                    VStack {
//                        ForEach(0..<10) { y in
//                            Button {
//                                notes[Position(x: x, y: y )] = "X"
//                                notes[Position(x: x+1, y: y)] = "-"
//                                notes[Position(x: x+2, y: y)] = "-"
//                                notes[Position(x: x+3, y: y)] = "-"
//                            } label: {
//                                ZStack {
//                                    Rectangle()
//                                        .fill(.red.opacity(0.2))
//                                        .border(.red)
//                                    if let note = notes[Position(x: x, y: y )] {
//                                        if note ==  "X" {
//                                            Circle()
//                                                .frame(height: 5)
//                                        }
//                                        if note == "-" {
//                                            Rectangle()
//                                                .frame(width: 5, height: 5)
//                                        }
//                                    }
//                                }
//                            }
//                            
//                        }
//                    }
//                    .frame(width: 50)
//                }
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
    }
}


#Preview {
    Partitura()
}
