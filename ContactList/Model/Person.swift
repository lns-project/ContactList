//
//  Person.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//
import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
