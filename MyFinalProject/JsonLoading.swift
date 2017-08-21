//
//  JsonLoading.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 06.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol JsonLoadingDelegate:class{
    func reciveData(dict:[String: Any])

}
class JsonLoading
{
    var exchangeRates = [String: Any]()
    
    weak var delegate: JsonLoadingDelegate?
    
    func jsonDownloading() -> [String: Any]
    {
        
        if let url = URL(string: "http://api.fixer.io/latest?base=USD")
        {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if let taskError = error
                {
                    print(taskError.localizedDescription)
                    return
                }
                if let downloadedData = data
                {
                    let json = JSON(downloadedData)
                    
                    let base = json["base"].stringValue,
                    date = json["date"].stringValue,
                    rates = json["rates"].dictionaryObject
                    
                    self.exchangeRates = rates!
                    
                    self.delegate?.reciveData(dict: rates!)
                    
                    for keys in rates!
                    {
                        print(keys)
                    }
                    
                }
            }
            task.resume()
        }
        return exchangeRates
    }
}















