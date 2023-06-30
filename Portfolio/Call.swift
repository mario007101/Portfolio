import SwiftUI

struct Call: View {
    var body: some View {
        var customers = Customers()
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            Text("Messages")
                .foregroundColor(.yellow)
                .font(.largeTitle)
                .bold()
                .padding(.top, -355)
            ScrollView{
                VStack(alignment: .leading) {
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                }
            }
            .frame(width: 390, height: 575)
            .padding(.top, -20)
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
