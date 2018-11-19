//
//  Characters.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

class Characters : Decodable
{
    let _id: String!
    let url: String!
    let name: String!
    let house: String!
    let slug: String!
    let gender: String!
    let culture: String!
    let born: String!
    let died: String!
    let titles: [String]!
    let aliases: [String]!
    let father: String!
    let mother: String!
    let spouse: String!
    let allegiances: [String]!
    let books: [String]!
    let povBooks: [String]!
    let tvSeries : [String]!
    let playedBy: [String]!
    
    init(json: [String: Any])
    {
        self._id = json["_id"] as? String ?? ""
        self.url = json["url"] as? String ?? ""
        self.name = json["name"] as? String ?? ""
        self.house = json["house"] as? String ?? ""
        self.slug = json["slug"] as? String ?? ""
        self.gender = json["gender"] as? String ?? ""
        self.culture = json["culture"] as? String ?? ""
        self.born = json["born"] as? String ?? ""
        self.died = json["died"] as? String ?? ""
        self.titles = json["titles"] as? [String] ?? []
        self.aliases = json["aliases"] as? [String] ?? []
        self.father = json["father"] as? String ?? ""
        self.mother = json["mother"] as? String ?? ""
        self.spouse = json["spouse"] as? String ?? ""
        self.allegiances = json["allegiances"] as? [String] ?? []
        self.books = json["books"] as? [String] ?? []
        self.povBooks = json["povBooks"] as? [String] ?? []
        self.tvSeries = json["tvSeries"] as? [String] ?? []
         self.playedBy = json["playedBy"] as? [String] ?? []
    }
}
