//
//  JsonLoading.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 06.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import Foundation

class JsonLoading: ExchangeRates
{
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
                    if let json =  (try? JSONSerialization.jsonObject(with: downloadedData, options: [])) as? [String: Any]
                    {
                        guard let base = json["base"] as? String,
                            let date = json["date"] as? String,
                            let rates = json["rates"] as? [String: Double]
                            
                            else
                        {
                            return
                        }
                        
                        print("base = \(base), date = \(date), rates = \(rates)")
                        
                        let usdRates = ExchangeRates(base: base, date: date, rates: rates)
                    }
                }
            }
            task.resume()
        }
        return 
    }
    
}
