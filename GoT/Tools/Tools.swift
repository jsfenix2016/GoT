//
//  Tools.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation


class Tools: ITools {
    static let sharedInstance = Tools()
    func processListHouse(listHouse: [House]) -> [String]
    {
        var test = [String]()       
        for (index, element) in (listHouse.enumerated()){
                 test.insert(element.name, at: index)
        }
        test.insert("All Houses", at: (0))
        let mySet = Set<String>(test)
        return Array(mySet)
    }
}
