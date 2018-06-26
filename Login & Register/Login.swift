
//
//  Login.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/23/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

import Firebase




class Login: UIViewController {
   
    
    
    
    
    
    
    let loginbutton: FBSDKLoginButton = {
        let button = FBSDKLoginButton ()
        button.readPermissions = ["email"]
        
        return button
    
    }()
    
    
    

    @IBOutlet var mainbutton: UIButton!
    
    @IBOutlet var EmailTf: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginbutton)
        loginbutton.center = view.center
        
       
        
    
        
       
        

    mainbutton.backgroundColor = UIColor.blue
    mainbutton.layer.cornerRadius = mainbutton.frame.height / 4
        mainbutton.setTitleColor(UIColor.white, for: .normal)
        mainbutton.layer.shadowColor = UIColor.red.cgColor
        mainbutton.layer.shadowRadius = 6
        
    }
    
    
    @IBAction func Login(_ sender: Any) {
        
        
        if EmailTf.text?.isEmpty == false  && password.text?.isEmpty == false {
            //Sign in this user with this email and this pass
            Auth.auth().signIn(withEmail: EmailTf.text!, password: password.text!, completion: { (user, error) in
                
                
                
                //succeed
                if error == nil {
                    //perform segue
                    print("Succeed")
                    //Save the user's id to user defaults so we can avoid asking the user to login everytime the user opens the app
                    UserDefaults.standard.set(Auth.auth().currentUser?.uid, forKey: "UID")
                    UserDefaults.standard.synchronize()
                    
                    self.performSegue(withIdentifier: "goToChannels", sender: nil)
                } else {
                    print("login Error ", error?.localizedDescription)
                }
            })
        }
        
    }
    
        
        
        
    
        
        
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

private func AlerttheUser(title:String, Message:String){
    
    let Alert = UIAlertController(title: title, message: Message, preferredStyle: .alert);
    let ok = UIAlertAction(title: "ok", style: .default, handler: nil);
    Alert.addAction(ok);
    present(Alert, animated: true, completion: nil);
}


}


