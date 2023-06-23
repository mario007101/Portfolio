import SwiftUI

struct InformationAbout: View {
    var body: some View {
        VStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tristique, nulla ut ultrices gravida, libero dui elementum risus, vitae efficitur sem nunc et purus. Sed interdum, nisi eget vulputate ullamcorper, orci leo interdum erat, nec faucibus augue eros non erat. Ut vestibulum bibendum ipsum sit amet luctus. Integer vitae efficitur leo, quis porttitor erat.")
                .background(Color.clear)
                .foregroundColor(.white)
                .opacity(0.7)
        }        
    }
}
struct InformationAbout_Previews: PreviewProvider {
    static var previews: some View {
        InformationAbout()
    }
}
