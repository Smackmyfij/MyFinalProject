//
//  OneViewController.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 10.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {
    
    
    
    
    

    @IBOutlet weak var oneTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
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

extension OneViewController: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneTableViewCellIdentidier", for: indexPath)
        
        if let myCell = cell as? OneTableViewCell
        {
            myCell.oneLabel.text = baseRate[indexPath.row]
            
            return myCell
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return baseRate.count
    }
}

















