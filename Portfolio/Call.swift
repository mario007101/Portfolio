import SwiftUI

struct Call: View {
    var body: some View {
        NavigationView {
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
