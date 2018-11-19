//
//  TablePrincipalSourceDelegate.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit

let identifier = "LabelCell"

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listGeneric.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: CellTablePrincipal! = tableView.dequeueReusableCell(withIdentifier: identifier) as? CellTablePrincipal
        
        if cell == nil {
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CellTablePrincipal
        }
        
        cell.backgroundColor = UIColor.clear
        cell.item = (self.listGeneric as NSArray?)?[indexPath.row] as! Characters
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.backgroundColor = UIColor.clear
       
        self.performSegue(withIdentifier: "goToDetail", sender: self.listGeneric[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
