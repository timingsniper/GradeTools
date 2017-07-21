//
//  ViewController.swift
//  ginta
//
//  Created by 장준우 on 2017. 7. 20..
//  Copyright © 2017년 Joonwoo Percy Jang. All rights reserved.
//
//https://peterwitham.com/swift-archives/how-to-use-a-uipickerview-as-input-for-a-uitextfield/
//was used as source code for picker view

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    // Letter Grade Textboxes
    @IBOutlet weak var theTextfield: UITextField!
    @IBOutlet weak var tb2: UITextField!
    @IBOutlet weak var tb3: UITextField!
    @IBOutlet weak var tb4: UITextField!
    @IBOutlet weak var tb5: UITextField!
    @IBOutlet weak var tb6: UITextField!
    @IBOutlet weak var tb7: UITextField!
    
    //Class Level Textboxes
    @IBOutlet weak var lb1: UITextField!
    @IBOutlet weak var lb2: UITextField!
    @IBOutlet weak var lb3: UITextField!
    @IBOutlet weak var lb4: UITextField!
    @IBOutlet weak var lb5: UITextField!
    @IBOutlet weak var lb6: UITextField!
    @IBOutlet weak var lb7: UITextField!


    
    var selectedTextField: UITextField = UITextField()
    
    
    let myPickerData = [String](arrayLiteral: "Select Grade","A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F")
    
    let myLevelPickerData = [String](arrayLiteral: "Select Level", "Regular", "Honors", "AP")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Declaration of the picker view
        let thePicker = UIPickerView()
        let thePicker2 = UIPickerView()
       
        //Letter Grade Self delegate assignments
        thePicker.delegate = self
        theTextfield.delegate = self
        tb2.delegate = self
        tb3.delegate = self
        tb4.delegate = self
        tb5.delegate = self
        tb6.delegate = self
        tb7.delegate = self
        
        //Class Level Self delegate assignments
        thePicker2.delegate = self
        lb1.delegate = self
        lb2.delegate = self
        lb3.delegate = self
        lb4.delegate = self
        lb5.delegate = self
        lb6.delegate = self
        lb7.delegate = self
        
        //Letter Grade Input-picker connection statements
        theTextfield.inputView = thePicker
        tb2.inputView = thePicker
        tb3.inputView = thePicker
        tb4.inputView = thePicker
        tb5.inputView = thePicker
        tb6.inputView = thePicker
        tb7.inputView = thePicker
        
        //Class Level Input-picker connection statements
    }
    
    func textFieldShouldReturn(_ tb1: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn2(_ tb2: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.selectedTextField = textField
    }
    
    // MARK: UIPickerView Delegation
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // TODO: Replace with data count
        return myPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // TODO: Replace with proper data
        return myPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        // Letter Grade Category Statements
        if self.selectedTextField == theTextfield {
            //Set text for theTextfield
            self.theTextfield.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb2 {
            //Set text for stateField
            self.tb2.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb3 {
            self.tb3.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb4 {
            self.tb4.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb5 {
            self.tb5.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb6 {
            self.tb6.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb7 {
            self.tb7.text = myPickerData[row]
        }

    }
    
    /*func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if self.selectedTextField == theTextfield {
            //Set text for countryField
            theTextfield.text = myPickerData[row]
        }
        else self.selectedTextField == tb2 {
            //Set text for stateField
            tb2.text = myPickerData[row]
        }
    }*/
    
    /*func pickerView2(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        tb2.text = myPickerData[row]
    }*/
    
    

    

}

