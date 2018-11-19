//
//  CellTablePrincipal.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit

class CellTablePrincipal: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblCulture: UILabel!
    @IBOutlet weak var lblBorn: UILabel!
    @IBOutlet weak var lblDied: UILabel!
    
    var item: Characters! {
        didSet{
            guard let item = item else {return}
            self.lblName.text =  item.name
            self.lblGender.text = item.gender
            self.lblCulture.text = item.culture
            self.lblBorn.text = item.born
            self.lblDied.text = item.died
        }        
    }
}
