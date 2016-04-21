//
//  LoginViewController.swift
//  Pandango
//
//  Created by Ritika Ravichandra on 3/7/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    @IBAction func loginAction(sender: AnyObject) {
        let url = "http://pandango.heroku.com/getLoginStatus/\(userName.text ?? "user")/\(passWord.text ?? "pass")"
        Alamofire.request(.GET, url, parameters: nil, encoding: .JSON, headers: nil).validate().responseJSON { response in
            switch response.result {
            case .Success:
                if let value = response.result.value {
                    let json = JSON(value)
                    print(json)
                    self.alert("Login succeeded", message: "")
                    

                }
                
            case .Failure(let error):
                print(error)
                self.alert("Login failed", message: "That username and password combination was not found.")
            }
        }
    }


}
