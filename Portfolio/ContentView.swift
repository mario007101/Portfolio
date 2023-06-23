import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("space")
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                
                Circle()
                    .foregroundColor(.gray)
                    .position(x: 180, y: -320)
                    .frame(width: 60, height: 60)
                    VStack {
                        ScrollView {
                            
                            Circle()
                                .foregroundColor(.gray)
                                .frame(width: 50, height: 50)
                                .position(x: 40, y: 20)
                            Circle()
                                .foregroundColor(.gray)
                                .frame(width: 50, height: 50)
                                .position(x: 60, y: -10)
                                .opacity(0.7)
                            
                            Text("Mário Markovič")
                                .bold()
                                .transparentText(color: .gray, lineWidth: 4)
                                .mask(Color.white.opacity(0.7))
                                .font(.system(size: 35))
                                .padding(.horizontal, -170)
                                .padding(.vertical, -110)
                            
    
                            InformationAbout()
                                .padding(.top, -50)
                                
                    
                        }
                    }
                .frame(maxHeight: .infinity, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
