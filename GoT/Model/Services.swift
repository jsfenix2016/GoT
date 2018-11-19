//
//  Services.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

protocol  Services {
    
 func hardProcessingCharacters(completion:@escaping (_ tran: [Characters]?) -> Void)
    
    func hardProcessingBooks(completion:@escaping (_ tran: [Books]?) -> Void)
    
    func hardProcessingHouse(completion:@escaping (_ tran: [House]?) -> Void)
    
    func processing(type: String, completionHandler: @escaping (_ tran: Data?)  -> Void)
}
