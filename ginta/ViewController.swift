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
    
    var selectedTextField: UITextField = UITextField()
    
    
    let myPickerData = [String](arrayLiteral: "Select Grade","A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let thePicker = UIPickerView()
       
        thePicker.delegate = self
        //thePicker2.delegate = self
        //tb1.delegate = self
        theTextfield.delegate = self
        tb2.delegate = self
        tb3.delegate = self
        tb4.delegate = self
        tb5.delegate = self
        tb6.delegate = self
        tb7.delegate = self
        
        theTextfield.inputView = thePicker
        tb2.inputView = thePicker
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
    
    /*func textFieldDidBeginEditing(textField: UITextField!) {
        self.selectedTextField = textField
    }*/
    
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
        if self.selectedTextField == theTextfield {
            //Set text for theTextfield
            self.theTextfield.text = myPickerData[row]
        }
        
        else if self.selectedTextField == tb2 {
            //Set text for stateField
            self.tb2.text = myPickerData[row]
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

