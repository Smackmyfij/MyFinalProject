//
//  OneViewController.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 10.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit
import SwiftyJSON

class OneViewController: UIViewController {

    @IBOutlet weak var oneTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let some = JsonLoading()
        
        
   
        
      
        
        let anotherSome = some.jsonDownloading()
        print(anotherSome.keys)

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
        let cell : OneTableViewCell = tableView.dequeueReusableCell(withIdentifier: "OneTableViewCellIdentidier", for: indexPath) as! OneTableViewCell
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2
    }
    
}



















