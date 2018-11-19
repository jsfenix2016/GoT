//
//  VCDetail.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit
fileprivate var tableViewCell = "LabelCell"

class VCDetail: UIViewController {
    
    var books = [String]()
    var d: Characters?
    
    @IBOutlet weak var tblBooks: UITableView!
    @IBOutlet weak var lblHouse: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSlug: UILabel!
    @IBOutlet weak var Male: UILabel!
    
    override  func viewWillAppear(_ animated: Bool) {       
       
         let sv =  UIViewController.displaySpinner(onView: self.view)
        DispatchQueue.global(qos: .userInteractive).async {
            Detail.init().hardProcessingCharactersId(id:(self.d?._id)!, completion: {[weak self] (characterDetails) in
                UIViewController.removeSpinner(spinner: sv)
                
                DispatchQueue.main.async {
                  
                    self?.lblHouse.text = characterDetails.data.house
                    self?.lblName.text = characterDetails.data.name
                    self?.lblSlug.text = characterDetails.data.slug
                    self?.Male.text = characterDetails.data.gender
                    self?.books = characterDetails.data.books
                    self?.tblBooks.reloadData()
                }
            })
        }
    }
}
