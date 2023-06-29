import SwiftUI

struct Customers {    
    var splitPerson = [
        "Mark",
        "Jon",
        "Gery",
        "Tony"
    ]
    
    mutating func removeFirstCustomer() -> String {
           let firstCustomer = splitPerson[0]
           splitPerson.removeFirst()
           return firstCustomer
       }
}

