//
//  OneViewController.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 10.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit
import SwiftyJSON

class ExchangeRatesViewController: UIViewController,  JsonLoadingDelegate{
    
    let image = UIImage(named: "goldImage1")
    let some = JsonLoading()
    var dictOfRate = [String:Any](),
    baseOfRateUSD = String(),
    dateOfRate = String(),
    exchangeRatesArray = [String]()
    
    @IBOutlet weak var exchangeRatesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.exchangeRatesTableView.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundImage1")!)
        some.delegate = self
        exchangeRatesArray.append(baseOfRateUSD)
        some.jsonDownloading()
        // Do any additional setup after loading the view.
    }
    func reciveData(dict:[String: Any])
    {
        dictOfRate = dict
        print("data was delegate")
        
    }
    func baseValue(base: String)
    {
        baseOfRateUSD = base
        print(baseOfRateUSD)
        
    }
    func dateValue(date: String)
    {
        dateOfRate = date
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ExchangeRatesViewController: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : ExchangeRatesTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ExchangeRatesTableViewCellIdentifier", for: indexPath) as! ExchangeRatesTableViewCell
        if exchangeRatesArray.isEmpty == true
        {
        cell.baseRateLabel.text = exchangeRatesArray[indexPath.row]
            print(exchangeRatesArray.description)
        } else {
            print("data dont load to Array")
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return exchangeRatesArray.count
    }
    
    
    
    
}



















