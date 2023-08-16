//
//  Event.swift
//  events-swiftui
//
//  Created by Jose Luna on 28/10/22.
//

import Foundation

struct Event {
    var image: String
    var title: String
    var description: String
    var country: String
    var location: String
    var ticket: Double
    init(image: String, title: String, description: String, country: String, location: String, ticket: Double) {
        self.image = image
        self.title = title
        self.description = description
        self.country = country
        self.location = location
        self.ticket = ticket
    }
}
