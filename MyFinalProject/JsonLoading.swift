//
//  JsonLoading.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 06.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol JsonLoadingDelegate: class{
    func reciveData(dict: [String: Any])
    func baseValue(base: String)
    func dateValue(date: String)
    
}
class JsonLoading
{
    weak var delegate: JsonLoadingDelegate?
    func jsonDownloading()
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
                    
                    var base = json["base"].stringValue,
                    date = json["date"].stringValue,
                    rates = json["rates"].dictionaryObject
                    
                    self.delegate?.reciveData(dict: rates!)
                    self.delegate?.dateValue(date: date)
                    self.delegate?.baseValue(base: base)
                    print("data was download")
                }
            }
            task.resume()
        }
    }
    
}















