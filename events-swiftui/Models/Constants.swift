//
//  Constants.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import Foundation

struct K {
    static let description: String = "This is a description, This is a description, This is a description, This is a description ,This is a description"
    static let location: String = "St. Cupertino flutter av. 593"
    static let events: [Event] = [
        Event(image: "crystalcastles", title: "Crystal Castles", description: description, country: "Holand", location: location, ticket: 97),
        Event(image: "gorillaz", title: "Gorillaz Live Tour", description: description, country: "Ecuador", location: location, ticket: 200),
        Event(image: "jcole", title: "J. Cole Live", description: description, country: "USA", location: location, ticket: 13),
        Event(image: "joji", title: "Joji super tour", description: description, country: "Canada", location: location, ticket: 69),
        Event(image: "metallica", title: "Metallica Live", description: description, country: "Germany", location: location, ticket: 140)
    ]
    static let user: User = User("Matildo", photo: "user")
    
    static let categories: [String] = ["Music", "Fashion", "Culinary", "Cultural", "Cinema"]
    
    struct Colors {
        static let bgColor: String = "bgColor"
        static let blackColor: String = "blackColor"
        static let grayColor: String = "grayColor"
        static let primaryColor: String = "primaryColor"
        static let bgGray: String = "almostWhite"
    }
    
    
}
