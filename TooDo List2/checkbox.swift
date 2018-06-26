//
//  checkbox.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/24/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class checkbox: UIViewController {
    
    
    
   
    
    @IBAction func box5(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
    }
    @IBAction func box4(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
    }
    @IBAction func box3(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    @IBAction func box2(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
    }
    
    @IBAction func checkbox(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
        
        
        
        
        
        
    }
    

  
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
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
