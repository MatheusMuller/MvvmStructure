//
//  Person.swift
//  Mvvm Structure
//
//  Created by Matheus Müller on 26/11/22.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
