//
//  OneViewController.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 10.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit
import SwiftyJSON

class OneViewController: UIViewController{
    
    let some = JsonLoading()
    var dictOfRate = [String:Any](),
    baseOfRate = String(),
    dateOfRate = String()
    
    @IBOutlet weak var oneTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        some.jsonDownloading()
        
        // Do any additional setup after loading the view.
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

extension OneViewController: UITableViewDataSource, JsonLoadingDelegate
{
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : OneTableViewCell = tableView.dequeueReusableCell(withIdentifier: "OneTableViewCellIdentidier", for: indexPath) as! OneTableViewCell
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2
    }
    
    func reciveData(dict:[String: Any])
    {
        print(dict)
        dictOfRate = dict
        
    }
    func baseValue(base: String)
    {
        baseOfRate = base
        print(base)
        
    }
    func dateValue(date: String)
    {
        dateOfRate = date
        print(date)
    }
    
    
}



















