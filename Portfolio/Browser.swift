import SwiftUI

struct Browser: View {
    var body: some View {
        Image("space")
            .resizable()
            .ignoresSafeArea()
    }
}

struct Browser_Previews: PreviewProvider {
    static var previews: some View {
        Browser()
    }
}
