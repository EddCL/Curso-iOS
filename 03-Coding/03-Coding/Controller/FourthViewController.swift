//
//  FourthViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 3/26/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {
    
    var weigth: Double = 50.0
    var height: Double = 1.0
    
    @IBOutlet weak var imageIMC: UIImageView!
    @IBOutlet weak var IMCLabel: UILabel!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWiegthLabel(newWeigth: stepper.value)
        rebootIMCLabels()
    }
    
    //MARK: Reiniciar calculo
    func rebootIMCLabels(){
        calculateButton.isEnabled = false
        IMCLabel.text = "Tu IMC es:"
        classificationLabel.text = " "
        imageIMC.image = UIImage(named: "imc")
    }
    
    //MARK: Altura
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    
        if let text = textField.text {
            if let altura = Double(text){
                if (altura > 0){
                    self.height = Double(altura)
                    calculateButton.isEnabled = true
                }else{
                    rebootIMCLabels()
                }
            }else{
                rebootIMCLabels()
            }
        }else {
            rebootIMCLabels()
        }
        return true
    }
    
    //MARK: Peso
    func updateWiegthLabel(newWeigth: Double){
        self.weigth = newWeigth
        self.weigthLabel.text = "Peso: \(weigth) kg"
    }
    
    @IBAction func weigthStepper(_ sender: UIStepper) {
        updateWiegthLabel(newWeigth: sender.value)
    }
    
    //MARK: Calcular IMC
    @IBAction func calculateIMC(_ sender: UIButton) {
        let imc = weigth/pow(height, 2)
        
        if (imc < 16.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Delgadez severa"
            imageIMC.image = UIImage(named: "delgado")
        }else if (16.0 <= imc) && (imc < 17.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Delgadez moderada"
            imageIMC.image = UIImage(named: "delgado")
        }else if (17.0 <= imc) && (imc < 18.5){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Delgadez leve"
            imageIMC.image = UIImage(named: "delgado")
        }else if (18.5 <= imc) && (imc < 25.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Normal"
            imageIMC.image = UIImage(named: "normal")
        }else if (25.5 <= imc) && (imc < 30.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Sobrepeso"
            imageIMC.image = UIImage(named: "obeso")
        }else if (30.0 <= imc) && (imc < 35.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Obesidad leve"
            imageIMC.image = UIImage(named: "obeso")
        }else if (35.0 <= imc) && (imc < 40.0){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Obesidad media"
            imageIMC.image = UIImage(named: "obeso")
        }else if (40.0 <= imc){
            IMCLabel.text = "Tu IMC es: \(imc)"
            classificationLabel.text = "Obesidad mórbida"
            imageIMC.image = UIImage(named: "obeso")
        }
    }
}
