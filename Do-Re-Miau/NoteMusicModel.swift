//
//  NoteMusicModel.swift
//  Do-Re-Miau
//
//  Created by User on 19/12/25.
//

import Foundation
import AVFoundation

private var audioPlayer: AVAudioPlayer?

enum NoteMusicalModel: String, CaseIterable, Identifiable {
    case doo, re, mi, fa, sol, la, si

    var id: String { rawValue }

    var nome: String {
        rawValue == "doo" ? "Dó" : rawValue.capitalized
    }

    var imagem: String {
        "nota_\(rawValue)"
    }

    var som: String {
        "som_\(rawValue)"
    }

    func tocarSom() {
        guard let url = Bundle.main.url(forResource: self.som, withExtension: "mp3") else {
            print("Erro: Arquivo \(self.som).mp3 não encontrado")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Erro ao reproduzir nota: \(error.localizedDescription)")
        }
    }
}

//Testar todos os sons -> arquivo de swiftui
//ForEach(NotaMusicalModel.allCases) { nota in
//    Button(action: {
//        nota.tocarSom()
//    }) {
//        HStack {
//            Text("Tocar \(nota.nome)")
//        }
//        .frame(width: 100)
//        .padding()
//        .background(Color.blue)
//        .foregroundColor(.white)
//    }
//    .padding(.horizontal)
//}
