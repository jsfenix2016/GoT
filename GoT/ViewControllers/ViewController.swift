//
//  ViewController.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit
fileprivate var tableViewCell = "LabelCell"
class ViewController: UIViewController {
   
    var listCharacters  = [Characters]()
    var listGeneric = [Characters]()
    var listHouse  = [House]()
    var pickerHouse: [String] = [String]()
    
    @IBOutlet weak var tblCharacter: UITableView!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tblCharacter.register(UINib(nibName: "CellTablePrincipal", bundle: nil), forCellReuseIdentifier: tableViewCell)
        pickerHouse = ["All house"]
        let sv = UIViewController.displaySpinner(onView: self.view)
        DispatchQueue.global(qos: .userInteractive).async {
            DispatchQueue.main.async {
                ServicesApi.init().hardProcessingCharacters(completion: {[weak self] (characters ) in
                    
                    UIViewController.removeSpinner(spinner: sv)
                    
                    self?.listCharacters = characters!
                    self?.listGeneric = characters!
                    self?.tblCharacter.reloadData()
                })
                ServicesApi.init().hardProcessingHouse(completion: {[weak self] (house) in
                    
                    self?.listHouse = house!
                  
                    self?.pickerHouse =  Tools.sharedInstance.processListHouse(listHouse: house!)
                    
                    self?.picker.reloadAllComponents()
                })                
            }
        }        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail" {
           let detail: VCDetail = segue.destination as! VCDetail           
            detail.d = sender as? Characters
        }
    }

    func list() -> [Characters]? {
        return listCharacters
    }
    func listH() -> [House]? {
        return listHouse
    }
}
