//
//  ViewController.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 10.11.20.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var genderRadioButtonsView: GenderRadioButtonsView!
    @IBOutlet weak var radioButtonsView: RadioButtonsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        radioButtonsView.titles = Goal.allCases.map(\.rawValue)
        radioButtonsView.layer.cornerRadius = 10
        radioButtonsView.layer.masksToBounds = true
        genderRadioButtonsView.layer.cornerRadius = 10
        genderRadioButtonsView.layer.masksToBounds = true
    }
    
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        
//        let genderButtons:[UIButton:String] = [
//            femaleButton:"Female",
//            maleButton:"Male"
//        ]
//        
//        for (button,value) in genderButtons {
//            if button == sender {
//                genderButtonValue = String(value)
//                button.isSelected = true
//            } else {
//                button.isSelected = false
//            }
//        }
    }
    
    @IBAction func ageTextFieldChanged(_ sender: UITextField) {
        
    }
    
    
    @IBAction func ageSliderChanged(_ sender: UISlider) {
        
         let age = String(format: "%.0f", sender.value)
         ageTextField.text = "\(age)"
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.0f", sender.value)
            heightTextField.text = "\(height)"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
            weightTextField.text = "\(weight)"
        
    }
    
}

