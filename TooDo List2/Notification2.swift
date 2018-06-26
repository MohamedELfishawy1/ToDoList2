//
//  Notification2.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/26/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class Notification2: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var ttlist: UITableView!
    
    var list1:[String] = Array()
    var list2:[String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list1.append("clean Room")
        list2.append("take ababy to doc")
        list2.append("today")
        list2.append("tomorow")
        
        ttlist.dataSource = self
        ttlist.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list1.count
        return list2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checklistidentfier") as! Notificationcell
        
        cell.lbl1.text = list1[indexPath.row]
        cell.lbl1.text = list1[indexPath.row]
        cell.Date.text = list2[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165.0
        
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
