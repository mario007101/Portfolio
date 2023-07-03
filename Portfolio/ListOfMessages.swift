import SwiftUI

struct ListOfMessages: View {
    @State private var isDetailViewPressed = false
    
    let uniqueCustomer: String
    let topColor: Color
    let bottomColor: Color
    
    var body: some View {
        Button(action: {
            isDetailViewPressed.toggle()
        }) {
            ZStack {
                Rectangle()
                    .fill(LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(13)
                    .frame(height: 120)
                    .padding(10)
                    .opacity(0.8)
                
                VStack {
                    HStack {
                        Text(uniqueCustomer)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.yellow)
                            .padding(30)
                        Spacer()
                    }
                    
                    Image(systemName: "envelope")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .padding(.leading, 260)
                        .padding(.top, -30)
                }.padding(.top, -30)
            }
        }
        .fullScreenCover(isPresented: $isDetailViewPressed) {
            DestinationView(uniqueCustomer: uniqueCustomer)
        }
    }
}

struct DestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    let uniqueCustomer: String
    
    var body: some View {
        ZStack(alignment: . topLeading) {
            
            Image("space")
                .resizable()
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    .padding(.leading, 30)
                    .padding(.top, 10)
            })

            Text(uniqueCustomer)
                .foregroundColor(.yellow)
                .font(.system(size: 40))
                .bold()
                .padding(.top, 70)
                .padding(.leading, 30)
            
            Text(makeRandomPhrase(randomNumber: Int.random(in: 0...2)))
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding(.top, 120)
                .padding(.leading, 30)
                .frame(width: 350)
        }
    }
    
    func makeRandomPhrase(randomNumber: Int) -> String {
        
        let makePhrase: String
        var myName = "Mário"
        
        switch randomNumber {
        case 0: makePhrase = "Hey \(myName) I'm so glad that I had seen you out. Could we go on football match this evening? \n\nRegards,\n\(uniqueCustomer)"
        case 1: makePhrase = "Hello \(myName) how are you? I haven't seen you for a long time. We should meet somewhere in town if you are down. \n\nAll the best,\n\(uniqueCustomer)"
        case 2: makePhrase = "Eyo \(myName) what will we do today?"
        default: makePhrase = "Hey \(myName) I'm so glad to see you here."
        }
        
        
        return makePhrase 
    }
}

    
struct ListOfMessages_Previews: PreviewProvider {
    static var previews: some View {
        var customers = Customers()
        ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
    }
}
