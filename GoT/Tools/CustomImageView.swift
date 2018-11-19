//
//  CustomImageView.swift
//  GoT
//
//  Created by test on 28/7/18.
//  Copyright © 2018 jsfenix. All rights reserved.
//

import Foundation
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

fileprivate var urlBaseApi = "https://api.got.show/api"

class CustomImageView: UIImageView {
    
    static let sharedInstance = CustomImageView()
    var imageUrlString: String?
    
    func loadImageUsingUrlString(urlString: String)  {
        imageUrlString = urlBaseApi + urlString
        
        image = nil
       
        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject){
            self.image = imageFromCache as? UIImage
            return
        }
        
        ServicesApi.init().processing(type: urlString) { result in
            
            do {
                
                if let result = result{
                    do{
                        guard let json = try JSONSerialization.jsonObject(with: result, options: .mutableContainers) as? [String: Any] else {return}
                        print(json)
                       
                        DispatchQueue.main.async{
                            let imageToCache = UIImage(data: result)
                            imageCache.setObject(imageToCache!, forKey: urlString as AnyObject)
                            self.image = imageToCache
                        }
                    }catch let jsonError
                    {
                        print(jsonError)
                    }
                }
            } catch let jsonError {
                print(jsonError)
            }
        }
        
        
        
       
    }
}
