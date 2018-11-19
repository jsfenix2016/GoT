//
//  DetailCharacter.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

class DetailCharacter : Decodable
{
    let message: String!
    let data: Characters!
    
    init(json: [String: Any])
    {
        self.message = json["message"] as? String ?? ""
        self.data = json["data"] as? Characters         
    }
}
