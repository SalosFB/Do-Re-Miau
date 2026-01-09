//
//  prologueView.swift
//  Do-Re-Miau
//
//  Created by User on 07/01/26.
//

import SwiftUI
//adicionar cores dos assets depois
//  prologueView.swift
//  Do-Re-Miau
//
//  Created by User on 07/01/26.
//

import SwiftUI
//adicionar cores dos assets depois
struct Cena {
    let label: String
    let imagePersonagem: String
    let imageQuadro: String
}

struct PrologueView: View {

    let listaCenas = [
        Cena(label: "Olá! blablbadlbald", imagePersonagem: "personagem_feliz", imageQuadro: "explicacao 1"),
        Cena(label: "hahahahhaha", imagePersonagem: "personagem_pensativo", imageQuadro: "explicacao 2"),
        Cena(label: "muahahhahah >:D", imagePersonagem: "personagem_alerta", imageQuadro: "explicacao 3")
    ]

    @State var indiceAtual = 0
    @State var escalaPersonagem: CGFloat = 1.0
    func proximaCena() {
        // Efeito de pulo ao trocar de cena
        escalaPersonagem = 0.85

        if indiceAtual < listaCenas.count - 1 {
            indiceAtual += 1
        } else {
            // Lógica para terminar o prólogo ou voltar ao início
            indiceAtual = 0
        }

        // Retorna ao tamanho original com atraso para criar o efeito de bounce
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.5)) {
                escalaPersonagem = 1.0
            }
        }
    }
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                HStack {
                    ZStack {
                        Color.white.ignoresSafeArea()
                        Image(listaCenas[indiceAtual].imageQuadro)
                    }
                    .frame(width: 700, height: 500)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .padding(.trailing, 20)
                    RoundedRectangle(cornerRadius: 10).frame(height: 1000).overlay(Image(listaCenas[indiceAtual].imagePersonagem)
                        .scaleEffect(escalaPersonagem)
                        .animation(.spring(response: 0.3, dampingFraction: 0.5), value: escalaPersonagem)
                    ) //personagem provisorio
                }
                Spacer()
            }.padding(.bottom, 250).padding(.horizontal, 20)

            //balao de fala em baixo pelo spacer
            VStack {
                Spacer()
                ZStack {
                    Color.white.ignoresSafeArea()
                    VStack{
                        HStack {
                            ZStack {
                                Color.blue.ignoresSafeArea()
                                Text("Nome")
                                    .foregroundStyle(Color.white)
                            }.clipShape(RoundedRectangle(cornerRadius: 40))
                                .frame(width: 100, height: 35) //width está fixo
                            Spacer()
                        } .padding(20)
                        Spacer()
                        Text(listaCenas[indiceAtual].label)
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                proximaCena()
                            }) {
                                ZStack {
                                    Color.blue.ignoresSafeArea()
                                    Text((self.indiceAtual < self.listaCenas.count - 1) ? "Pular" : "Reiniciar")
                                        .foregroundStyle(Color.white)
                                }.clipShape(RoundedRectangle(cornerRadius: 40))
                                    .frame(width: 100, height: 35) //width está fixo
                            }
                        } .padding(20)

                    }
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            }.padding(.horizontal, 20).padding(.bottom, 250)
        }
    }
}

#Preview {
    PrologueView()
}
