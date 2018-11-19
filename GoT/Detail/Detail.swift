//
//  Detail.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit
class Detail: IDetail {
    
    func hardProcessingCharactersId(id: String, completion:@escaping (_ tran: DetailCharacter) -> Void) {
       
        ServicesApi.init().processing(type: String(format: "/characters/byId/%@", id)) { result in
            
            do {
                if let result = result{
                    let articlesData = try JSONDecoder().decode(DetailCharacter.self, from: result)
                        completion(articlesData)
                }
            } catch let jsonError {
                print(jsonError)
                
            }
        }
    }
}
