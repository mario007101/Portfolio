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
        .sheet(isPresented: $isDetailViewPressed) {
            DestinationView()
        }
    }
}

struct DestinationView: View {
    var body: some View {
        Text("This is the destination view")
            .font(.largeTitle)
            .bold()
    }
}
    
struct ListOfMessages_Previews: PreviewProvider {
    static var previews: some View {
        var customers = Customers()
        ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
    }
}
