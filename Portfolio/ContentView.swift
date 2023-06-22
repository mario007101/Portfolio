import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("space")
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    VStack {
                        ScrollView {
                            Text("Mário Markovič")
                                .bold()
                                .transparentText(color: .gray, lineWidth: 4)
                                .mask(Color.white.opacity(0.7))
                                .font(.system(size: 35))
                                .padding(.horizontal, -170)
                            
                            InformationAbout()
                                
                        }
                    }
                .frame(maxHeight: .infinity, alignment: .center)
                .border(.pink)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
