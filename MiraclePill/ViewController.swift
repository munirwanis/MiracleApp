//
//  ViewController.swift
//  MiraclePill
//
//  Created by Munir Wanis on 13/01/17.
//  Copyright © 2017 Munir Wanis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerLbl: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxtField: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var streetAddressTxtField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxtField: UITextField!
    @IBOutlet weak var successIndicatorImg: UIImageView!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var pillsImg: UIImageView!
    
    let states = ["Alaska", "Alabama", "New York", "California", "Texas", "Washington"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        fullNameLbl.isHidden = true
        fullNameTxtField.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTxtField.isHidden = true
        cityLbl.isHidden = true
        cityTxtField.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        successIndicatorImg.isHidden = false
        fullNameLbl.isHidden = true
        fullNameTxtField.isHidden = true
        streetAddressLbl.isHidden = true
        streetAddressTxtField.isHidden = true
        cityLbl.isHidden = true
        cityTxtField.isHidden = true
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
        dividerView.isHidden = true
        priceLbl.isHidden = true
        titleLbl.isHidden = true
        pillsImg.isHidden = true
        statePickerLbl.isHidden = true
        statePickerBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        fullNameLbl.isHidden = false
        fullNameTxtField.isHidden = false
        streetAddressLbl.isHidden = false
        streetAddressTxtField.isHidden = false
        cityLbl.isHidden = false
        cityTxtField.isHidden = false
    }
}

