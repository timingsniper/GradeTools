//
//  wacViewController.swift
//  ginta
//
//  Created by 장준우 on 2017. 7. 27..
//  Copyright © 2017년 Joonwoo Percy Jang. All rights reserved.
//
import GoogleMobileAds

import Foundation
import UIKit

class wacViewController: UIViewController, UITextFieldDelegate {
    
    var bannerView: GADBannerView!

    //Category Name Field (For keyboard hiding)
    @IBOutlet weak var namae1: UITextField!
    @IBOutlet weak var namae2: UITextField!
    @IBOutlet weak var namae3: UITextField!
    @IBOutlet weak var namae4: UITextField!
    @IBOutlet weak var namae5: UITextField!
    
    //Category Weight field
    @IBOutlet weak var weighto1: UITextField!
    @IBOutlet weak var weighto2: UITextField!
    @IBOutlet weak var weighto3: UITextField!
    @IBOutlet weak var weighto4: UITextField!
    @IBOutlet weak var weighto5: UITextField!
    
    //Category Grade Field
    @IBOutlet weak var grade1: UITextField!
    @IBOutlet weak var grade2: UITextField!
    @IBOutlet weak var grade3: UITextField!
    @IBOutlet weak var grade4: UITextField!
    @IBOutlet weak var grade5: UITextField!
    
    //Result Label
    @IBOutlet weak var resultLabel: UILabel!
    
    //Calculate Button
    @IBOutlet weak var calcButt: UIButton!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        
        let bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        self.view.addSubview(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-8922445711636151/7058557863"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    
        //Class Name self delegate assignments
        namae1.delegate = self
        namae2.delegate = self
        namae3.delegate = self
        namae4.delegate = self
        namae5.delegate = self
        
        weighto1.delegate = self
        weighto2.delegate = self
        weighto3.delegate = self
        weighto4.delegate = self
        weighto5.delegate = self
        
        grade1.delegate = self
        grade2.delegate = self
        grade3.delegate = self
        grade4.delegate = self
        grade5.delegate = self
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
    
    func textFieldShouldReturn6(_ weighto1: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn7(_ weighto2: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn8(_ weighto3: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn9(_ weighto4: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn10(_ weighto5: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn11(_ grade1: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn12(_ grade2: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn13(_ grade3: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn14(_ grade4: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textFieldShouldReturn15(_ grade5: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func calculate(_ sender: Any) {
        var w1S: String = weighto1.text!
        var w1D : Double = (w1S as NSString).doubleValue
        
        var w2S: String = weighto2.text!
        var w2D : Double = (w2S as NSString).doubleValue
        
        var w3S: String = weighto3.text!
        var w3D : Double = (w3S as NSString).doubleValue
        
        var w4S: String = weighto4.text!
        var w4D : Double = (w4S as NSString).doubleValue
        
        var w5S: String = weighto5.text!
        var w5D : Double = (w5S as NSString).doubleValue
        
        //Compute in Grades
        var g1S: String = grade1.text!
        var g1D : Double = (g1S as NSString).doubleValue
        
        var g2S: String = grade2.text!
        var g2D : Double = (g2S as NSString).doubleValue
        
        var g3S: String = grade3.text!
        var g3D : Double = (g3S as NSString).doubleValue
        
        var g4S: String = grade4.text!
        var g4D : Double = (g4S as NSString).doubleValue
        
        var g5S: String = grade5.text!
        var g5D : Double = (g5S as NSString).doubleValue
        
        let finalGrade : Double = (w1D*(g1D/100))+(w2D*(g2D/100))+(w3D*(g3D/100))+(w4D*(g4D/100))+(w5D*(g5D/100))
        
        
        
        
        var gg: String
        if(w1D == 0 || w2D == 0 || w3D == 0 || w4D == 0 || w5D == 0 || g1D == 0 || g2D == 0 || g3D == 0 || g4D == 0 || g5D == 0){
            self.resultLabel.text = "Enter Valid Numbers!"
        }
            
        else if(w1D+w2D+w3D+w4D+w5D != 100){
            self.resultLabel.text = "Make sure weight sums up to 100!"
        }
            
        else{
            gg =  String(format: "%.2f", finalGrade)
            self.resultLabel.text =  "Weighted Grade: " + gg + "%"
        }

        
    }
   
    

    
    
    
    
    
}
