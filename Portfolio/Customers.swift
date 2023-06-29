import SwiftUI

struct Customers {
    
    var otherCustomer: String {
        var splitPerson = [
            "Mark",
            "Jon",
            "Gery"
        ]
            let firstCustomer = splitPerson[0]
            splitPerson.removeFirst()
            return firstCustomer
    }
}

