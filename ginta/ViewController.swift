//
//  ViewController.swift
//  ginta
//
//  Created by 장준우 on 2017. 7. 20..
//  Copyright © 2017년 Joonwoo Percy Jang. All rights reserved.
//
//Special Thanks to the following:
//
//https://peterwitham.com/swift-archives/how-to-use-a-uipickerview-as-input-for-a-uitextfield/
//was used as source code for picker view
//
//https://stackoverflow.com/questions/31728680/how-to-make-an-uipickerview-with-a-done-button-swift
//was used as source code for cancel/done button toolbar on the picker view.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    //Class Name Tetboxes (For keyboard hiding)
    @IBOutlet weak var namae1: UITextField!
    @IBOutlet weak var namae2: UITextField!
    @IBOutlet weak var namae3: UITextField!
    @IBOutlet weak var namae4: UITextField!
    @IBOutlet weak var namae5: UITextField!
    @IBOutlet weak var namae6: UITextField!
    @IBOutlet weak var namae7: UITextField!
    
    //Letter Grade Textboxes
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
    
    //Buton
    @IBOutlet weak var calcButt: UIButton!
    
    //Result Label
    @IBOutlet weak var resultLabel: UILabel!


    //selectedTextField variable to discriminate the currently selected UITextField
    var selectedTextField: UITextField = UITextField()
    
    //Data for 2nd Column input picker
    let myPickerData = [String](arrayLiteral: "Select Grade","A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F")
    
    //Data for 3rd Column input picker
    let myLevelPickerData = [String](arrayLiteral: "Select Level", "Regular", "Honors", "AP")
    
    //Donepicker instuction function (Action to quit the picker upon clicking done/cancel button)
    func donePicker (sender:UIBarButtonItem){
        
        //Letter Grade Column resignFirstResponder
        
        if self.selectedTextField == theTextfield{
            theTextfield.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb2{
            tb2.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb3{
            tb3.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb4{
            tb4.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb5{
            tb5.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb6{
            tb6.resignFirstResponder()
        }
        
        else if self.selectedTextField == tb7{
            tb7.resignFirstResponder()
        }
        
        //Class Level Column resignFirstResponder
            
        else if self.selectedTextField == lb1{
            lb1.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb2{
            lb2.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb3{
            lb3.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb4{
            lb4.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb5{
            lb5.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb6{
            lb6.resignFirstResponder()
        }
        
        else if self.selectedTextField == lb7{
            lb7.resignFirstResponder()
        }
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Declaration of the picker view
        let thePicker = UIPickerView()
        let thePicker2 = UIPickerView()
        
        //Done Button configuration
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()
        
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: #selector(donePicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.plain, target: self, action: #selector(donePicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true

        
        //Tag setting for two pickers
        thePicker.tag = 1
        thePicker2.tag = 2
        
        
        //Class Name self delegate assignments
        namae1.delegate = self
        namae2.delegate = self
        namae3.delegate = self
        namae4.delegate = self
        namae5.delegate = self
        namae6.delegate = self
        namae7.delegate = self
        
       
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
        
        //Letter Grade Input-picker connection & Toolbar statements
        theTextfield.inputView = thePicker
        theTextfield.inputAccessoryView = toolBar
        
        tb2.inputView = thePicker
        tb2.inputAccessoryView = toolBar
        
        tb3.inputView = thePicker
        tb3.inputAccessoryView = toolBar
        
        tb4.inputView = thePicker
        tb4.inputAccessoryView = toolBar
        
        tb5.inputView = thePicker
        tb5.inputAccessoryView = toolBar
        
        tb6.inputView = thePicker
        tb6.inputAccessoryView = toolBar
        
        tb7.inputView = thePicker
        tb7.inputAccessoryView = toolBar
        
        //Class Level Input-picker connection statements
        lb1.inputView = thePicker2
        lb1.inputAccessoryView = toolBar
        
        lb2.inputView = thePicker2
        lb2.inputAccessoryView = toolBar
        
        lb3.inputView = thePicker2
        lb3.inputAccessoryView = toolBar
        
        lb4.inputView = thePicker2
        lb4.inputAccessoryView = toolBar
        
        lb5.inputView = thePicker2
        lb5.inputAccessoryView = toolBar
        
        lb6.inputView = thePicker2
        lb6.inputAccessoryView = toolBar
        
        lb7.inputView = thePicker2
        lb7.inputAccessoryView = toolBar
    
    }
    
    //Hide-keyboard functions
    func textFieldShouldReturn(_ namae1: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn2(_ namae2: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn3(_ namae3: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn4(_ namae4: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn5(_ namae5: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn6(_ namae6: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn7(_ namae7: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function to discriminate between selected textboxes
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.selectedTextField = textField
    }
    
    // MARK: UIPickerView Delegation
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // TODO: Replace with data count
        if pickerView.tag == 1{
            return myPickerData.count
        }
        else if pickerView.tag == 2{
            return myLevelPickerData.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // TODO: Replace with proper data
        if pickerView.tag == 1{
            return myPickerData[row]
        }
        else if pickerView.tag == 2{
            return myLevelPickerData[row]
        }
        return ""
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
        
        //Class Level Category Statements
        else if self.selectedTextField == lb1 {
            self.lb1.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb2 {
            self.lb2.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb3 {
            self.lb3.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb4 {
            self.lb4.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb5 {
            self.lb5.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb6 {
            self.lb6.text = myLevelPickerData[row]
        }
        
        else if self.selectedTextField == lb7 {
            self.lb7.text = myLevelPickerData[row]
        }
    

    }
    
    //Core Function for GPA Calculation with entered information
    //Code from previous Mac Program <SMIC GPA Calculator> was reused.
    func calculateGPA()->Double{
        var tempOne : Double = 0.0
        var tempTwo : Double = 0.0
        var tempThree : Double = 0.0
        var tempFour : Double = 0.0
        var tempFive : Double = 0.0
        var tempSix : Double = 0.0
        var tempSeven : Double = 0.0
        var preResult : Double = 0.0
        var result : Double = 0.0
        var numSub : Double = 7
        
        //Calculate First Class Average
        if theTextfield.text == "A"{
            tempOne = 4.00
        }
        else if theTextfield.text == "A-"{
            tempOne = 3.67
        }
        else if theTextfield.text == "B+"{
            tempOne = 3.33
        }
        else if theTextfield.text == "B"{
            tempOne = 3.00
        }
        else if theTextfield.text == "B-"{
            tempOne = 2.67
        }
        else if theTextfield.text == "C+"{
            tempOne = 2.33
        }
        else if theTextfield.text == "C"{
            tempOne = 2.00
        }
        else if theTextfield.text == "C-"{
            tempOne = 1.67
        }
        else if theTextfield.text == "D+"{
            tempOne = 1.33
        }
        else if theTextfield.text == "D"{
            tempOne = 1.00
        }
        else if theTextfield.text == "D-"{
            tempOne = 0.67
        }
        else if (theTextfield.text == "F" || theTextfield.text == "Select Grade"){
            tempOne = 0.0
        }
        
        
        if (lb1.text == "Regular" || lb1.text == "Select Level"){
            tempOne += 0.00
        }
            
        else if lb1.text == "Honors"{
            tempOne += 0.50
        }
            
        else if lb1.text == "AP"{
            tempOne += 1.00
        }
        
        
        //Calculate Second Class Average
        if tb2.text == "A"{
            tempTwo = 4.00
        }
        else if tb2.text == "A-"{
            tempTwo = 3.67
        }
        else if tb2.text == "B+"{
            tempTwo = 3.33
        }
        else if tb2.text == "B"{
            tempTwo = 3.00
        }
        else if tb2.text == "B-"{
            tempTwo = 2.67
        }
        else if tb2.text == "C+"{
            tempTwo = 2.33
        }
        else if tb2.text == "C"{
            tempTwo = 2.00
        }
        else if tb2.text == "C-"{
            tempTwo = 1.67
        }
        else if tb2.text == "D+"{
            tempTwo = 1.33
        }
        else if tb2.text == "D"{
            tempTwo = 1.00
        }
        else if tb2.text == "D-"{
            tempTwo = 0.67
        }
        else if (tb2.text == "F" || tb2.text == "Select Grade"){
            tempTwo = 0.0
        }
        
        
        if (lb2.text == "Regular" || lb2.text == "Select Level"){
            tempTwo += 0.00
        }
            
        else if lb2.text == "Honors"{
            tempTwo += 0.50
        }
            
        else if lb2.text == "AP"{
            tempTwo += 1.00
        }
        
        
        //Calculate Third Class Average
        if tb3.text == "A"{
            tempThree = 4.00
        }
        else if tb3.text == "A-"{
            tempThree = 3.67
        }
        else if tb3.text == "B+"{
            tempThree = 3.33
        }
        else if tb3.text == "B"{
            tempThree = 3.00
        }
        else if tb3.text == "B-"{
            tempThree = 2.67
        }
        else if tb3.text == "C+"{
            tempThree = 2.33
        }
        else if tb3.text == "C"{
            tempThree = 2.00
        }
        else if tb3.text == "C-"{
            tempThree = 1.67
        }
        else if tb3.text == "D+"{
            tempThree = 1.33
        }
        else if tb3.text == "D"{
            tempThree = 1.00
        }
        else if tb3.text == "D-"{
            tempThree = 0.67
        }
        else if (tb3.text == "F" || tb3.text == "Select Grade"){
            tempThree = 0.0
        }
        
        
        if (lb3.text == "Regular" || lb3.text == "Select Level"){
            tempThree += 0.00
        }
            
        else if lb3.text == "Honors"{
            tempThree += 0.50
        }
            
        else if lb3.text == "AP"{
            tempThree += 1.00
        }
        
        
        //Calculate Fourth Class Average
        if tb4.text == "A"{
            tempFour = 4.00
        }
        else if tb4.text == "A-"{
            tempFour = 3.67
        }
        else if tb4.text == "B+"{
            tempFour = 3.33
        }
        else if tb4.text == "B"{
            tempFour = 3.00
        }
        else if tb4.text == "B-"{
            tempFour = 2.67
        }
        else if tb4.text == "C+"{
            tempFour = 2.33
        }
        else if tb4.text == "C"{
            tempFour = 2.00
        }
        else if tb4.text == "C-"{
            tempFour = 1.67
        }
        else if tb4.text == "D+"{
            tempFour = 1.33
        }
        else if tb4.text == "D"{
            tempFour = 1.00
        }
        else if tb4.text == "D-"{
            tempFour = 0.67
        }
        else if (tb4.text == "F" || tb4.text == "Select Grade"){
            tempFour = 0.0
        }
        
        
        if (lb4.text == "Regular" || lb4.text == "Select Level"){
            tempFour += 0.00
        }
            
        else if lb4.text == "Honors"{
            tempFour += 0.50
        }
            
        else if lb4.text == "AP"{
            tempFour += 1.00
        }

        
        //Calculate Fifth Class Average
        if tb5.text == "A"{
            tempFive = 4.00
        }
        else if tb5.text == "A-"{
            tempFive = 3.67
        }
        else if tb5.text == "B+"{
            tempFive = 3.33
        }
        else if tb5.text == "B"{
            tempFive = 3.00
        }
        else if tb5.text == "B-"{
            tempFive = 2.67
        }
        else if tb5.text == "C+"{
            tempFive = 2.33
        }
        else if tb5.text == "C"{
            tempFive = 2.00
        }
        else if tb5.text == "C-"{
            tempFive = 1.67
        }
        else if tb5.text == "D+"{
            tempFive = 1.33
        }
        else if tb5.text == "D"{
            tempFive = 1.00
        }
        else if tb5.text == "D-"{
            tempFive = 0.67
        }
        else if (tb5.text == "F" || tb5.text == "Select Grade"){
            tempFive = 0.0
        }
        
        
        if (lb5.text == "Regular" || lb5.text == "Select Level"){
            tempFive += 0.00
        }
            
        else if lb5.text == "Honors"{
            tempFive += 0.50
        }
            
        else if lb5.text == "AP"{
            tempFive += 1.00
        }

        //Calculate Sixth Class Average (Spacing got messy cause I began to copy to memo->find and replace lel)
        if  tb6.text == "A"{
            tempSix = 4.00
        }
            
        else if  tb6.text == "A-"{
            tempSix = 3.67
        }
            
        else if  tb6.text == "B+"{
            
            tempSix = 3.33
            
        }
            
        else if  tb6.text == "B"{
            
            tempSix = 3.00
            
        }
            
        else if  tb6.text == "B-"{
            
            tempSix = 2.67
            
        }
            
        else if  tb6.text == "C+"{
            
            tempSix = 2.33
            
        }
            
        else if  tb6.text == "C"{
            
            tempSix = 2.00
            
        }
            
        else if  tb6.text == "C-"{
            
            tempSix = 1.67
            
        }
            
        else if  tb6.text == "D+"{
            
            tempSix = 1.33
            
        }
            
        else if  tb6.text == "D"{
            
            tempSix = 1.00
            
        }
            
        else if  tb6.text == "D-"{
            
            tempSix = 0.67
            
        }
            
        else if (tb6.text == "F" ||  tb6.text == "Select Grade"){
            
            tempSix = 0.0
            
        }
        
        
        
        
        
        if (lb6.text == "Regular" ||  lb6.text == "Select Level"){
            
            tempSix += 0.00
            
        }
            
            
            
        else if  lb6.text == "Honors"{
            
            tempSix += 0.50
            
        }
            
            
            
        else if  lb6.text == "AP"{
            
            tempSix += 1.00
            
        }
        
        //Calculate Seventh Class Average
        //Calculate Fifth Class Average
        
        if  tb7.text == "A"{
            
            tempSeven = 4.00
            
        }
            
        else if  tb7.text == "A-"{
            
            tempSeven = 3.67
            
        }
            
        else if  tb7.text == "B+"{
            
            tempSeven = 3.33
            
        }
            
        else if  tb7.text == "B"{
            
            tempSeven = 3.00
            
        }
            
        else if  tb7.text == "B-"{
            
            tempSeven = 2.67
            
        }
            
        else if  tb7.text == "C+"{
            
            tempSeven = 2.33
            
        }
            
        else if  tb7.text == "C"{
            
            tempSeven = 2.00
            
        }
            
        else if  tb7.text == "C-"{
            
            tempSeven = 1.67
            
        }
            
        else if  tb7.text == "D+"{
            
            tempSeven = 1.33
            
        }
            
        else if  tb7.text == "D"{
            
            tempSeven = 1.00
            
        }
            
        else if  tb7.text == "D-"{
            
            tempSeven = 0.67
            
        }
            
        else if (tb7.text == "F" ||  tb7.text == "Select Grade"){
            
            tempSeven = 0.0
            
        }
        
        
        
        
        
        if (lb7.text == "Regular" ||  lb7.text == "Select Level"){
            
            tempSeven += 0.00
            
        }
            
            
            
        else if  lb7.text == "Honors"{
            
            tempSeven += 0.50
            
        }
            
            
            
        else if  lb7.text == "AP"{
            
            tempSeven += 1.00
            
        }
        
        if (tb7.text == "Select Grade" || tb7.text == ""){
            numSub -= 1
            tempSeven = 0
        }

        //Calculate and return
        preResult = (tempOne + tempTwo + tempThree + tempFour + tempFive + tempSix + tempSeven)
        
        result = preResult/numSub
        
        return result
  }
    
    @IBAction func calc(_ sender: Any) {
        let result : Double = calculateGPA()
        var gg : String
        
        gg =  String(format: "%.2f", result)
        //gg = String(result)
        
        
        self.resultLabel.text = "Your GPA is: " + gg
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
