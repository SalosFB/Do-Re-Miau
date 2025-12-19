import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.corDeFundo
            TelaDeJogo1()
        }.ignoresSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
