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


//adicionar cores dos assets depois
struct Cena {
    let label: String
    let imagePersonagem: String
    let imageQuadro: String
}

struct PrologueView: View {

    let listaCenas = [
        Cena(label: "Ah, olá! Obrigado por vir. Precisava muito da sua ajuda! Vou te explicar o que está acontecendo.", imagePersonagem: "MirianImage", imageQuadro: "PartituraImage"),
        Cena(label: "Eu preciso apresentar essa melodia para o recital de hoje, e essa apresentação vai ser muito importante para mim, pois é a minha primeira apresentação! Então para facilitar vou te explicar o que acontecendo na minha partitura.", imagePersonagem: "MirianImage", imageQuadro: "PartituraImage"),
        Cena(label: "... AI… MEU… DEUS! Meu gato subiu e manchou minha partitura. Você pode me ajudar? Ainda dá pra ler a partitura, mas temos que estruturar tudo novamente até ficar bem claro para eu ler.", imagePersonagem: "MirianImage", imageQuadro: "PartituraImage"),
        Cena(label: "Sim? Ainda bem, você é um ótimo amigo. Temos algumas maneiras para resolver este problema, escolha um modo.", imagePersonagem: "MirianImage", imageQuadro: "PartituraImage")
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

        NavigationStack {
            
            ZStack {
                Color.corBackground.ignoresSafeArea()
                VStack {
                    HStack {
                        //imagens da explicacao no 'quadro'
                        ZStack {
                            Color.white.ignoresSafeArea()
                            Image(listaCenas[indiceAtual].imageQuadro)
                                .resizable()
                                .scaledToFit()
                        }
                        .frame(width: 700, height: 500)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.trailing, 20)
                        RoundedRectangle(cornerRadius: 10)
                            .opacity(0)
                            .frame(height: 1000)
                            .overlay(Image(listaCenas[indiceAtual].imagePersonagem)
                                .resizable()
                                .scaledToFill()
                            .scaleEffect(escalaPersonagem)
                            .animation(.spring(response: 0.3, dampingFraction: 0.5), value: escalaPersonagem)
                            ).padding(.trailing, 100)
                        VStack {
                            CreateNavigationButton(
                                destination: MainView(),
                                label: "",
                                icon: "checkmark",
                                widht: 80,
                                height: 80,
                                cornerRadius: 50,
                                color: .corBotao,
                                foregroundColor: .white,
                                textSize: 20,
                                imageSize: 1.0,
                                action_status: {print("Indo para o menu..")}).padding(.top, 250)
                            Spacer()
                        }
                    }
                    Spacer()
                }.padding(.bottom, 250).padding(.horizontal, 20)

                VStack {
                    Spacer()
                    //Botao de pular/reiniciar
                    ZStack {
                        Color.white.ignoresSafeArea()
                        VStack{
                            HStack {
                                ZStack {
                                    Color.corBotao.ignoresSafeArea()
                                    Text("Miriam")
                                        .font(.system(size: 20))
                                        .foregroundStyle(Color.white)
                                }.clipShape(RoundedRectangle(cornerRadius: 40))
                                    .frame(width: 100, height: 35) //width está fixo
                                Spacer()
                            } .padding(20)
                            Spacer()
                            Text(listaCenas[indiceAtual].label)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(.horizontal, 10)
                            Spacer()
                            HStack {
                                Spacer()
                                CreateButton(label: (self.indiceAtual < self.listaCenas.count - 1) ? "Pular" : "Reiniciar", icon: "", widht: 100, height: 35, cornerRadius: 40, color: Color.corBotao, foregroundColor: Color.white, textSize: 20, imageSize: 0, action_status: proximaCena)
                                
                            } .padding(20)
                        }
                    }
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                }.padding(.horizontal, 20).padding(.bottom, 250)
            }
        }
    }
}

#Preview {
    PrologueView()
}
