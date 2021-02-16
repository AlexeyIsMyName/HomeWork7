//
//  Person.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        firstName + " " + secondName
    }
}

class DataManager {
    var firstNames: [String] {
        [
            "Liam",
            "Noah",
            "William",
            "James",
            "Oliver",
            "Benjamin",
            "Elijah",
            "Lucas",
            "Mason",
            "Logan"
        ]
    }
    
    var secondNames: [String] {
        [
            "Smith",
            "Johnson",
            "Williams",
            "Brown",
            "Jones",
            "Garcia",
            "Miller",
            "Davis",
            "Rodriguez",
            "Martinez"
        ]
    }
    
    var emails: [String] {
        [
            "7lindaek921@vcamp.co",
            "vfla.alkhaf@duybuy.com",
            "omehdi_219@icecold.shop",
            "pmenerhicham1k@koskiandsyvari.com",
            "rwasi162k@azww.site",
            "xmc_ehabm@hagototo.com",
            "aomar.elmalek.9t@goandget.site",
            "chic.ham27@arss.me",
            "5ana.scorpion_prw@maechic.com",
            "fshankyr@dafam88.com"
        ]
    }
    
    var phoneNumbers: [String] {
        [
            "857-449-2181",
            "702-326-9147",
            "858-822-5663",
            "708-913-4929",
            "479-522-7210",
            "949-246-2669",
            "201-859-9161",
            "603-721-5664",
            "360-655-3692",
            "406-674-7885"
        ]
    }
}

