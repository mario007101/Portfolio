import SwiftUI

struct Call: View {

    var body: some View {
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                ListOfMessages(topColor: .black, bottomColor: .gray)
                ListOfMessages(topColor: .black, bottomColor: .gray)
                ListOfMessages(topColor: .black, bottomColor: .gray)
                ListOfMessages(topColor: .black, bottomColor: .gray)
            }
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
