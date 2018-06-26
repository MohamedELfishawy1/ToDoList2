//
//  Register.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/23/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

import Firebase

class Register: UIViewController {

    @IBOutlet var EmailReg: UITextField!
    @IBOutlet var PawwordReg: UITextField!
    @IBOutlet var Main2: UIButton!
    @IBOutlet var Confirm: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Main2.backgroundColor = UIColor.blue
        Main2.layer.cornerRadius = Main2.frame.height / 4
        Main2.setTitleColor(UIColor.white, for: .normal)
        Main2.layer.shadowColor = UIColor.red.cgColor
        Main2.layer.shadowRadius = 6
        
    }

    @IBAction func Register(_ sender: Any) {
        
        
        
        //Check if the user has entered email and pass
        if EmailReg.text?.isEmpty == false  && PawwordReg.text?.isEmpty == false && Confirm.text?.isEmpty == false {
            
            //Create new user using the entered email and pass
            Auth.auth().createUser(withEmail: EmailReg.text!, password: PawwordReg.text!, completion: { (user, error) in
                
                
                
                //That means we successfully created user
                if error == nil {
                    //Add it to the database
                    DataService.instance.REF_USERS.child(user!.user.uid).updateChildValues(["Email": self.EmailReg.text!, "Pass": self.PawwordReg.text!])
                    
                    
                    //Save the user's id to user defaults so we can avoid asking the user to login everytime the user opens the app
                    UserDefaults.standard.set(Auth.auth().currentUser?.uid, forKey: "UID")
                    UserDefaults.standard.synchronize()
                    
                    
                    self.performSegue(withIdentifier: "goToChannels", sender: nil)
                    
                } else {
                    //Handle error case
                    print("Signup Error ", error?.localizedDescription)
                }
            })
        }
        
    }
        
        
        
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
