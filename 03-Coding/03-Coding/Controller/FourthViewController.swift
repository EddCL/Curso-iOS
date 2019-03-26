//
//  FourthViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 3/26/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {
    
    var weigth = 50.0
    var height = 1.0
    
    @IBOutlet weak var imageIMC: UIImageView!
    @IBOutlet weak var IMCLabel: UILabel!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWiegthLabel(newWeigth: stepper.value)
        calculateButton.isEnabled = false

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if let altura = textField.text {
            self.height = Double(altura)!
            calculateButton.isEnabled = true
        }
        return true
    }
    
    func updateWiegthLabel(newWeigth: Double){
        self.weigth = newWeigth
        self.weigthLabel.text = "Peso: \(weigth)"
    }
    
    @IBAction func weigthStepper(_ sender: UIStepper) {
        updateWiegthLabel(newWeigth: sender.value)
    }
    
    @IBAction func calculateIMC(_ sender: UIButton) {
    }
    
}
