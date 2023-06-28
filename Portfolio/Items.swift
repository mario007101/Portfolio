import SwiftUI

struct Items: View {
    @State var isClicked = false
    
    var body: some View {
        
        ZStack {
            ZStack {
                Image("space")
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .ignoresSafeArea()
                
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
                                path.move(to: CGPoint(x: 15, y: 150))
                                path.addLine(to: CGPoint(x: 45, y: 150))
                                path.move(to: CGPoint(x: 30, y: 135))
                                path.addLine(to: CGPoint(x: 30, y: 165))
                            }
                            .stroke(Color.white, lineWidth: 4)
                                                                        
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
                        .padding(.vertical, 0)
                    Circle()
                        .foregroundColor(.white)
                        .position(x: 190, y: -35)
                        .frame(width: 80, height: 80)
                    
                    Image("pictureOfHuman")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 130)
                        .clipShape(Circle())
                        .padding(.leading, 300)
                        .padding(.top, -188)
                    
                    Button(action: {
                        isClicked = true
                    }, label: {
                        if isClicked == false {
                            Image(systemName: "heart")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                        } else {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.yellow)
                                .font(.largeTitle)
                                .shadow(color: .black, radius: 6.0)
                        }
                    })
                    .padding(.top, -120)
                    .padding(.leading, 260)
                    
                    //Path for the line on the right side
                    Path { path in
                        path.move(to: CGPoint(x: 360, y: 200))
                        path.addLine(to: CGPoint(x: 360, y: 555))
                        path.closeSubpath()
                        
                    }
                    .stroke(Color.white, lineWidth: 4)
                    
                    //Path for drawed circles on the line
                    let pathForCircles = Path { path in
                        
                        var positionOfCircles = -80
                        
                        for _ in 0..<8 {
                            path.addArc(center: CGPoint(x: 360, y: positionOfCircles), radius: 8, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                            positionOfCircles += 50
                        }
                    }
                    pathForCircles.fill(Color.yellow).overlay(pathForCircles.stroke(Color.black, lineWidth: 4))
                                        
                }
            }
        }
    }
}


struct Items_Previews: PreviewProvider {
    static var previews: some View {
        Items()
    }
}

