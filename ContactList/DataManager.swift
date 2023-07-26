//
//  DataManager.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//

class DataManager {
    
    var names: [String] = ["Michelle", "Desmond", "Alonzo",
                           "Mindy", "Sebastian", "Natalie",
                           "Emerson", "Aaryn", "Lonny",
                           "Orlando", "Carmine", "Homer"]
    
    var surnames: [String] = ["Delacruz", "Drake", "Douglas",
                              "Holloway", "Myers", "Hamilton",
                              "Roach", "Willis", "Wallace",
                              "Oconnor", "Conley", "Ortiz"]
    
    var phones: [String] = ["285254763", "408969784", "234768887",
                           "190246758", "876920854", "136795867",
                           "334227581", "434167649", "162477746",
                           "894850979", "993514533", "530621645"]
    
    var emails: [String] = ["wikasap181@weizixu.com", "hajemor_oro59@mail.com",
                           "gicohin_uwa69@mail.com", "nugosu-dotu94@mail.com",
                           "toyonuw-ahu29@mail.com", "kiro-simini45@hotmail.com",
                           "kifac_apego49@outlook.com", "ney_okatitu21@yahoo.com",
                           "rute-pipege27@yahoo.com", "rov_obakoje30@hotmail.com",
                           "gikij-agago42@yahoo.com", "koto-yaceve4@yahoo.com"]
    
    func getPersonList() -> [Person] {
        
        var personsArray: [Person] = []
        
        while (personsArray.count <= 10) {
            guard let name = names.randomElement(),
                  let surname = surnames.randomElement(),
                  let phone = phones.randomElement(),
                  let email = emails.randomElement()
            else { break }

            let person = Person(name: name, surname: surname, phone: phone, email: email)
            personsArray.append(person)
                
            names = names.filter {$0 != name}
            surnames = surnames.filter {$0 != surname}
            phones = phones.filter {$0 != phone}
            emails = emails.filter {$0 != email}
        }
        return personsArray
    }

}

