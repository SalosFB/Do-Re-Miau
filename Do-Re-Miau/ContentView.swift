import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.corDeFundo
            ScoreMusicView()
        }.ignoresSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
