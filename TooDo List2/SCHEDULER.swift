//
//  SCHEDULER.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/24/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class SCHEDULER: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    


    @IBOutlet var tablList: UITableView!
    
    var listArray:[String] = Array()
    var listArray2:[String] = Array()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listArray.append("clean Room")
        listArray.append("take ababy to doc")
        listArray2.append("today")
        listArray2.append("tomorow")
        
        tablList.register(UINib.init(nibName: "SCHEDULERcell", bundle: nil), forCellReuseIdentifier: "checklistidentfier")
        
        tablList.dataSource = self
        tablList.delegate = self
        

  
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checklistidentfier") as! SCHEDULERcell
        
        cell.libTitle.text = listArray[indexPath.row]
        cell.lbltitle2.text = listArray[indexPath.row]
        cell.Date.text = listArray2[indexPath.row]
        
        cell.selectionStyle = .none
        cell.check1.addTarget(self, action: #selector(checkmarkbuttoncliked(sender:)), for: .touchUpInside)
        cell.check2.addTarget(self, action: #selector(checkmarkbuttoncliked(sender:)), for: .touchUpInside)
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 196.5
    }
    
    
   @objc func checkmarkbuttoncliked (sender:UIButton) {
    print("button passed")
    
    if sender.isSelected {
        
        sender.isSelected = false
        
    } else {
        sender.isSelected = true
        
    }
    
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
