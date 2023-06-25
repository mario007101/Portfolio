import SwiftUI

struct ContentView: View {
    @State var isClicked = false
    
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
                            .frame(width: 360)
                        
                        //Container for hexagon shadows
                        HStack{
                            HexagonShape()
                            HexagonShape()
                            HexagonShape()
                                .rotationEffect(.degrees(30))
                            HexagonShape()
                                .foregroundColor(.red)
                            HexagonShape()
                                .rotationEffect(.degrees(30))
                        }
                        
                        HStack{
                            Image("Csharp_logo")
                                .resizable()
                                .frame(width: 60, height: 60)
                            Image("C_logo")
                                .resizable()
                                .frame(width: 60, height: 60)
                            Image("swift_logo")
                                .resizable()
                                .clipShape(Hexagon())
                                .frame(width: 60, height: 60)
                            Image("html_logo")
                                .resizable()
                                .frame(width: 60, height: 60)
                            
                            //Plus in a hexagon
                            Path { path in
                                path.move(to: CGPoint(x: 5, y: 20))
                                path.addLine(to: CGPoint(x: 35, y: 20))
                                path.move(to: CGPoint(x: 20, y: 35))
                                path.addLine(to: CGPoint(x: 20, y: 5))
                            }
                            .stroke(Color.white, lineWidth: 4)
                            .position(x: 23, y: 280)

                        }
                        .frame(width: 300, height: 300, alignment: .leading)
                        .padding(.top, -189)
                        .padding(.leading, -30)
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
                    
                    Button(action: {
                        isClicked = true
                    }, label: {
                        if isClicked == false {
                            Image(systemName: "heart")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                        } else {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .shadow(color: .black, radius: 6.0)
                        }
                    })
                    .padding(.top, -400)
                    .padding(.leading, 260)
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
