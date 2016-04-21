//
//  ProfilePage.swift
//  Pandango
//
//  Created by Ritika R on 4/20/16.
//  Copyright © 2016 Ritika Ravichandra. All rights reserved.
//

//MARK: Properties



import Foundation
import UIKit

class ProfilePage: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var major: UILabel!
    
    
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
    
    func setProfileVals() {
        self.bio.text = "I am a student at Georgia Tech"
        self.name.text = "Ganapathy Hari Narayan"
        self.major.text = "Computer Engineering, but I wish I was Computer Science"
    }
    
    
}