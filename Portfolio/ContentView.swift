import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Image("space")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ScrollView {
                    
                    Text("Mário Markovič")
                        .bold()
                        .transparentText(color: .gray, lineWidth: 3)
                        .mask(Color.white.opacity(0.7))
                        .font(.system(size: 35))
                        .padding(.horizontal, -170)

                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tristique, nulla ut ultrices gravida, libero dui elementum risus, vitae efficitur sem nunc et purus. Sed interdum, nisi eget vulputate ullamcorper, orci leo interdum erat, nec faucibus augue eros non erat. Ut vestibulum bibendum ipsum sit amet luctus. Integer vitae efficitur leo, quis porttitor erat.")
                        .frame(maxWidth: .minimum(350, 450))
                        .font(.system(size: 15))
                        .foregroundColor(.cyan)
                        .padding(.top, -5)
                        
                }
            }
            .frame(maxHeight: .infinity, alignment: .center)
            .border(.pink)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
