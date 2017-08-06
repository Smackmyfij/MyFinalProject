//
//  Finance.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 04.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import Foundation


class ExchangeRates
{
    var base = String()
    var date = String()
    var rates = Dictionary<String,Double>()
    
    init(base: String, date: String, rates: Dictionary<String, Double>)
    {
        self.base = base
        self.date = date
        self.rates = rates
    }
}
