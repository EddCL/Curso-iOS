//
//  FirstViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 2/11/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    var userAge = -1
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAgeLabel()
    }
    
    
    //para implementar, recordar arrastrar el text field al view controler y darle en DELEGATE
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //para quitar el teclado al dar a INTRO
        print("boton intro presionado")
        
        //Recuperar el contenido del text field
        if let name = textField.text{
            print(name)
            self.userName = name
        }
        return true
    }

    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        print(Int(sender.value))
        self.updateAgeLabel()
    }
    
    @IBAction func validateData(_ sender: UIButton) {
        let shouldEnterTheParty = (userName == "Juan Gabriel") || (userAge >= 18)
        
        if shouldEnterTheParty{
            print("Puedes entrar por ser JB :v")
            self.view.backgroundColor = .green
        }else{
            print("No puedes entrar :(")
            self.view.backgroundColor = .red
        }
    }
    
    func updateAgeLabel() {
        userAge = Int(sliderAge.value)
        self.labelAge.text = "\(userAge)"
    }
    
}

