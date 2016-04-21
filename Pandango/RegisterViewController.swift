//
//  RegisterViewController.swift
//  Pandango
//
//  Created by Ritika Ravichandra on 3/7/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RegisterViewController: UIViewController {
    //MARK: Properties

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Handle the text field’s user input through delegate callbacks.
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: actions
    @IBAction func registerNow(sender: UIButton) {
        let name = firstName.text! + lastName.text!
        let url = "http://pandango.herokuapp.com/userRegistration/"
        Alamofire.request(.POST, url, parameters: ["name": name ?? "iOS user","username":userName.text ?? "iosuser","password":pass.text ?? "pass" ], encoding: .JSON, headers: nil).validate().responseJSON { response in
            switch response.result {
            case .Success:
                print("working")
                if let value = response.result.value {
                    print("working")
                    let json = JSON(value)
                    print(json)
                }
                
            case .Failure(let error):
                print(error)
            }
        }
        

    }
    
    @IBAction func returntoWelcome(sender: AnyObject) {
    }

}