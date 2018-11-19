//
//  ViewControllerPicker.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import UIKit

extension ViewController:  UIPickerViewDelegate, UIPickerViewDataSource {

   
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerHouse.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return pickerHouse[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if(pickerHouse[row] == "All House")
            {
                self.listGeneric = listCharacters
            }else
            {
                self.listGeneric = self.listCharacters.filter{ ($0.house) == (pickerHouse[row])  }
            }
        
        print(self.listGeneric.count)
        
        self.tblCharacter.reloadData()
    }
    

}
