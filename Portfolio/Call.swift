import SwiftUI

struct Call: View {
    var body: some View {
        var customers = Customers()
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            Text("Messages")
                .foregroundColor(.white)
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
            .frame(width: 390, height: 565)
            .padding(.top, -50)
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
