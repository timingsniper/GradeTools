//
//  profileViewController.swift
//  ginta
//
//  Created by 장준우 on 2017. 8. 1..
//  Copyright © 2017년 Joonwoo Percy Jang. All rights reserved.
//

import Foundation
import UIKit

/*let aScale : Double = 0
let aMinusScale : Double = 0
let bPlusScale : Double = 0
let bScale : Double = 0
let bMinusScale : Double = 0
let cPlusScale : Double = 0
let cScale : Double = 0
let cMinusScale : Double = 0
let dPlusScale : Double = 0
let dScale : Double = 0
let dMinusScale : Double = 0
let fScale : Double = 0*/



let userDefaults = UserDefaults.standard



class profileviewController : UIViewController, UITextFieldDelegate {
    @IBOutlet weak var aField: UITextField!
    @IBOutlet weak var aMinusField: UITextField!
    @IBOutlet weak var bPlusField: UITextField!
    @IBOutlet weak var bField: UITextField!
    @IBOutlet weak var bMinusField: UITextField!
    @IBOutlet weak var cPlusField: UITextField!
    @IBOutlet weak var cField: UITextField!
    @IBOutlet weak var cMinusField: UITextField!
    @IBOutlet weak var dPlusField: UITextField!
    @IBOutlet weak var dField: UITextField!
    @IBOutlet weak var dMinusField: UITextField!
    @IBOutlet weak var fField: UITextField!
    
    @IBOutlet weak var saveButt: UIButton!
    
  
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        
        
        
        //Scale Textboxes self delegate Assignments
        aField.delegate = self
        aMinusField.delegate = self
        bPlusField.delegate = self
        bField.delegate = self
        bMinusField.delegate = self
        cPlusField.delegate = self
        cField.delegate = self
        cMinusField.delegate = self
        dPlusField.delegate = self
        dField.delegate = self
        dMinusField.delegate = self
        fField.delegate = self
        
    }
    
    //Hide-keyboard functions
    func textFieldShouldReturn(_ aField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn2(_ aMinusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn3(_ bPlusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn4(_ bField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn5(_ bMinusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn6(_ cPlusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn7(_ cField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn8(_ cMinusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn9(_ dPlusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn10(_ dField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn11(_ dMinusField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    func textFieldShouldReturn12(_ fField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    @IBAction func save(_ sender: Any) {
        userDefaults.set((aField.text! as NSString).doubleValue, forKey: "aVal")
        userDefaults.set((aMinusField.text! as NSString).doubleValue, forKey: "aMinusVal")
        userDefaults.set((bPlusField.text! as NSString).doubleValue, forKey: "bPlusVal")
        userDefaults.set((bField.text! as NSString).doubleValue, forKey: "bVal")
        userDefaults.set((bMinusField.text! as NSString).doubleValue, forKey: "bMinusVal")
        userDefaults.set((cPlusField.text! as NSString).doubleValue, forKey: "cPlusVal")
        userDefaults.set((cField.text! as NSString).doubleValue, forKey: "cVal")
        userDefaults.set((cMinusField.text! as NSString).doubleValue, forKey: "cMinusval")
        userDefaults.set((dPlusField.text! as NSString).doubleValue, forKey: "dPlusVal")
        userDefaults.set((dField.text! as NSString).doubleValue, forKey: "dVal")
        userDefaults.set((dMinusField.text! as NSString).doubleValue, forKey: "dMinusVal")
        userDefaults.set((fField.text! as NSString).doubleValue, forKey: "fVal")
        
        
        
        
        
    }
    
    
    
}
