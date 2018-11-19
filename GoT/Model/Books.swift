//
//  Books.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

class Books : Decodable
{
    let url: String!
    let imageLink: String!
    let name: String!
    let isbn: String!
    let authors: [String]!
    let numberOfPages: String!
    let publisher: String!
    let country: String!
    let mediaType: String!
    let released: [String]!
    let characters: [String]!
    let povCharacters: [String]!
    
    init(json: [String: Any])
    {
        self.url = json["url"] as? String ?? ""
        self.imageLink = json["imageLink"] as? String ?? ""
        self.name = json["name"] as? String ?? ""
        self.isbn = json["isbn"] as? String ?? ""
        self.authors = json["authors"] as? [String] ?? []
        self.numberOfPages = json["numberOfPages"] as? String ?? ""
        self.publisher = json["publisher"] as? String ?? ""
        self.country = json["country"] as? String ?? ""
        self.mediaType = json["mediaType"] as? String ?? ""
        self.released = json["released"] as? [String] ?? []
        self.characters = json["characters"] as? [String] ?? []
        self.povCharacters = json["povCharacters"] as? [String] ?? []        
    }
}
