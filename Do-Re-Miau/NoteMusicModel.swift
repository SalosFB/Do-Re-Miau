//
//  NoteMusicModel.swift
//  Do-Re-Miau
//
//  Created by User on 19/12/25.
//

import Foundation

enum NotaMusicalModel: String, CaseIterable, Identifiable {
    case doo, re, mi, fa, sol, la, si

    var id: String { rawValue }

    var nome: String {
        rawValue.capitalized
    }

    var imagem: String {
        "nota_\(rawValue)"
    }

    var som: String {
        "som_\(rawValue)"
    }

}
