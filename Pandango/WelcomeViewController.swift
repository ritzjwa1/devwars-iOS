//
//  WelcomeViewController.swift
//  Pandango
//
//  Created by Ritika R on 4/12/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//
//
//  TestViewController.swift
//  Pandango
//
//  Created by Ritika R on 4/12/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//

import UIKit
import Alamofire

class WelcomeViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func goToLogin(sender: UIButton) {
        
    }
    @IBAction func goToRegister(sender: UIButton) {
    }
     
    
}
