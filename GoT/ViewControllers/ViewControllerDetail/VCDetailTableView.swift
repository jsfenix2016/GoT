//
//  VCDetailTableView.swift
//  GoT
//
//  Created by test on 29/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation
import UIKit


let identifierDetail = "LabelCell"

extension VCDetail: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        }
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.text = (self.books as NSArray?)?[indexPath.row] as? String
               
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.backgroundColor = UIColor.clear
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
