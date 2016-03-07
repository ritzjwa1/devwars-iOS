//
//  RegisterViewController.swift
//  Pandango
//
//  Created by Ritika Ravichandra on 3/7/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    //MARK: properties
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var registerUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: actions
    
    @IBAction func registerAction(sender: AnyObject) {
    }
    
}