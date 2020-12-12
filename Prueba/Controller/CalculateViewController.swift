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
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var weightLossButton: UIButton!
    @IBOutlet weak var maintainWeightButton: UIButton!
    @IBOutlet weak var buildMuscleButton: UIButton!
    
    var goalButtonValue = ""
    var genderButtonValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goalButtonPressed(_ sender: UIButton) {
        

    }
    
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        
        let genderButtons:[UIButton:String] = [
            femaleButton:"Female",
            maleButton:"Male"
        ]
        
        for (button,value) in genderButtons {
            if button == sender {
                genderButtonValue = String(value)
                button.isSelected = true
            } else {
                button.isSelected = false
            }
        }
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

