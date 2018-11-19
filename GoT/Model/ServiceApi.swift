//
//  ServiceApi.swift
//  GoT
//
//  Created by test on 27/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation

fileprivate var listCharacters = [Characters]()
fileprivate var listBooks = [Books]()
fileprivate var listHouse = [House]()

class ServicesApi: Services {
    
     func processing(type: String, completionHandler: @escaping (_ tran: Data?)  -> Void) {
        
        let urlString = Constants.url.BaseApi + type
        print(urlString)
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error)  in
            if error != nil {
                print(error!.localizedDescription)
                completionHandler(nil)
            }
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                completionHandler(data)
            }
        }).resume()
    }
    
    func hardProcessingCharacters(completion:@escaping (_ tran: [Characters]?) -> Void) {
        
        self.processing(type: Constants.url.characters) { result in
            do {
                if let result = result{
                    let articlesData = try JSONDecoder().decode([Characters].self, from: result)
                    
                    listCharacters = articlesData
                    
                    DispatchQueue.main.async {
                        completion(listCharacters)
                    }
                }
            } catch let jsonError {
                print(jsonError)
                completion(nil)
            }
        }
    }
    
    func hardProcessingBooks(completion:@escaping (_ tran: [Books]?) -> Void){
        
        self.processing(type: Constants.url.books) { result in
            do {
                if let result = result{
                    let articlesData = try JSONDecoder().decode([Books].self, from: result)
                    
                    listBooks = articlesData
                }
            } catch let jsonError {
                print(jsonError)
            }
        }
    }
    
    func hardProcessingHouse(completion:@escaping (_ tran: [House]?) -> Void){
        
        self.processing(type: Constants.url.houses) { result in
            do {
                if let result = result{
                    let articlesData = try JSONDecoder().decode([House].self, from: result)
                    
                    listHouse = articlesData
                    
                    DispatchQueue.main.async {
                       completion(listHouse)
                    }
                }
            } catch let jsonError {
                print(jsonError)
                 completion(nil)
            }
        }
    }
}
