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
    
    var userAge = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //para implementar, recordar arrastrar el text field al view controler y darle en DELEGATE
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //para quitar el teclado al dar a INTRO
        print("boton intro presionado")
        
        //Recuperar el contenido del text field
        if let text = textField.text{
            print(text)
        }
        return true
    }

    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        print(Int(sender.value))
        userAge = Int(sender.value)
        
        self.labelAge.text = "\(userAge)"
    }
    
}

