//
//  IDetail.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

protocol IDetail {
    func hardProcessingCharactersId(id: String, completion:@escaping (_ tran: DetailCharacter) -> Void)
}
