//
//  TwoViewController.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 10.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

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
extension ConverterViewController: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : TwoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TwoTableViewCellIdentidier", for: indexPath) as! TwoTableViewCell
        
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    
    
    
}

