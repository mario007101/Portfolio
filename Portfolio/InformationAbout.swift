import SwiftUI
import UIKit

struct InformationAbout: View {
    var body: some View {
        let name: String = "Mário Markovič".uppercased()
        
        VStack{
            Text("Hey ! \nI'm \(Text(name).foregroundColor(.yellow)), \na junior software developer")
                .background(.clear)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
                .font(.largeTitle)
        }        
    }
}

struct InformationAbout_Previews: PreviewProvider {
    static var previews: some View {
        InformationAbout()
    }
}
