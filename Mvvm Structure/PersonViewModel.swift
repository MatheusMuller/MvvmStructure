//
//  PersonViewModel.swift
//  Mvvm Structure
//
//  Created by Matheus Müller on 26/11/22.
//

// The ViewModel is responsible for treating the Model Data and showing it in the View in a clean way

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = [] // Every time 'people' is changed, it notifies the View
    
    init() {
        addPeople() // Manually calling to initialize the Data
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
    
    func removeLast() {
        people.removeLast()
    }
    
    func removeFirst() {
        people.removeFirst()
    }
}

let peopleData = [ // Adding Data to the Model
    Person(name: "Joe", email: "joe123@gmail.com", phoneNumber: "99999-9888"),
    Person(name: "David", email: "david_000@gmail.com", phoneNumber: "99999-2222"),
    Person(name: "John", email: "john@gmail.com", phoneNumber: "99999-1111"),
    Person(name: "Robert", email: "robert007@gmail.com", phoneNumber: "99999-0000"),
    Person(name: "Dan", email: "dan999@gmail.com", phoneNumber: "99999-9999"),
]
