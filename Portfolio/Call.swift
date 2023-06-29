import SwiftUI

struct Call: View {
    var body: some View {
        var customers = Customers()
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading) {
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                    ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                }
            }
            .frame(width: .infinity, height: 565)
            .padding(.top, -50)
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
