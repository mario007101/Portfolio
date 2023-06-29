import SwiftUI

struct Customers {    
    var splitPerson = [
        "Mark",
        "Jon",
        "Gery",
        "Tony",
        "Jake",
        "Don"
    ]
    
    mutating func removeFirstCustomer() -> String {
           let firstCustomer = splitPerson[0]
           splitPerson.removeFirst()
           return firstCustomer
       }
}

