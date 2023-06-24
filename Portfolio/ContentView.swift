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
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .position(x: 40, y: 20)
                        
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .position(x: 60, y: -10)
                            .opacity(0.7)
                        
                        InformationAbout()
                            .padding(.top, -30)
                        
                        //Container for hexagon
                        HStack{
                            HexagonShape()
                            HexagonShape()
                                .rotationEffect(.degrees(30))
                            HexagonShape()
                            HexagonShape()
                            HexagonShape()
                        }

                        HStack{
                            Image("Csharp_logo")
                                .resizable()
                                .frame(width: 60, height: 60)
                            Image("swift_logo")
                                .resizable()
                                .clipShape(Hexagon())
                                .frame(width: 58, height: 58)
                            



                        }
                        .frame(width: 300, height: 300)
                        .padding(.top, -189)
                    }
                }
            .frame(maxHeight: .infinity, alignment: .center)
                
                //Fixed text and picture
                VStack{
                    Text("Mário Markovič")
                        .bold()
                        .transparentText(color: .gray, lineWidth: 4)
                        .mask(Color.white.opacity(0.9))
                        .font(.system(size: 35))
                        .padding(.horizontal, -170)
                        .padding(.vertical, -330)
                    Circle()
                        .foregroundColor(.white)
                        .position(x: 190, y: -315)
                        .frame(width: 80, height: 80)
                    Image("pictureOfHuman")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 130)
                        .clipShape(Circle())
                        .padding(.leading, 300)
                        .padding(.top, -468)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
