//
//  ViewController.swift
//  01-IAmRich
//
//  Created by Eduardo Carrillo on 1/25/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "I am rich", message: "I am RICH,\nI deserve it,\nI am good,\n healthy and successful", preferredStyle: .alert) //o usar triple comilla """ """
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("Pulsé el botón de Aceptar")
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("Pulsé el boton de Borrar")
        })
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("Pulsé el botón de Cancelar")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
    }
    
}
