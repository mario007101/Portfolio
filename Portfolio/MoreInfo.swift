import SwiftUI

struct MoreInfo: View {
    var body: some View {
        ZStack{
            Image("space")
                .resizable()
                .ignoresSafeArea()
            List {
                //Have to finish
                Text("hey")
                Text("hey")
            }
        }.background(.clear)
    }
}

struct MoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfo()
    }
}
