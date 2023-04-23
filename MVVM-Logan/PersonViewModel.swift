//
//  PersonViewModel.swift
//  MVVM-Logan
//
//  Created by Brian McIntosh on 4/22/23.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
}

let peopleData = [
    Person(name: "Brian", email: "brian@mixinteractive.com", phoneNumber: "248-777-5000"),
    Person(name: "Bill", email: "bill@mixinteractive.com", phoneNumber: "555-544-2323"),
    Person(name: "Karen", email: "karen@mixinteractive.com", phoneNumber: "090-233-9090"),
    Person(name: "Tony", email: "tony@mixinteractive.com", phoneNumber: "248-777-5000"),
    Person(name: "Sarah", email: "sarah@mixinteractive.com", phoneNumber: "555-544-2323")
]
