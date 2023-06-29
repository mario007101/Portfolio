import SwiftUI

struct Call: View {
    var body: some View {
        var customers = Customers()
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
                ListOfMessages(uniqueCustomer: customers.removeFirstCustomer(), topColor: .black, bottomColor: .gray)
            }
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
