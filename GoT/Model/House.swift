//
//  House.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

class House : Decodable
{
    let _id: String!
    let imageLink: String!
    let overlord: String!
    let region: String!
    let name: String!
    let _v: String!
    let updatedAt: String!
    let createdAt: String!
    let ancestralWeapon: [String]!
    
    init(json: [String: Any])
    {
        self._id = json["_id"] as? String ?? ""
        self.imageLink = json["imageLink"] as? String ?? ""
        self.overlord = json["overlord"] as? String ?? ""
        self.region = json["region"] as? String ?? ""
        self.name = json["name"] as? String ?? ""
        self._v = json["__v"] as? String ?? ""
        self.updatedAt = json["updatedAt"] as? String ?? ""
        self.createdAt = json["createdAt"] as? String ?? ""
        self.ancestralWeapon = json["ancestralWeapon"] as? [String] ?? []        
    }   
}
