import SwiftUI

struct Call: View {
    var body: some View {
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
