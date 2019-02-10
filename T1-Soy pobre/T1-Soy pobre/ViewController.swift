//
//  ViewController.swift
//  T1-Soy pobre
//
//  Created by Eduardo Carrillo on 2/10/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelIam: UILabel!
    @IBOutlet weak var imageIam: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelIam.text = "Soy..."
        imageIam.image = UIImage(named: "misterio")
    }
    
    @IBAction func iAmRich(_ sender: UIButton) {
        let controller = UIAlertController(title: "SOY RICO!!😎", message: "Soy rico\nLo merezco\nSoy bueno\nSaludable y exitoso", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            switch self.imageIam.image{
                
            case UIImage(named: "pobre1"), UIImage(named: "pobre2"), UIImage(named: "pobre3"):
                self.imageIam.image = UIImage(named: "rico1")
                self.labelIam.text = "Soy rico!!! 💎💰"
                self.view.backgroundColor = UIColor(red:0.43, green:0.51, blue:0.53, alpha:1.0)
                
            case UIImage(named: "misterio"):
                self.imageIam.image = UIImage(named: "rico1")
                self.labelIam.text = "Soy rico!!! 💎💰"
                self.view.backgroundColor = UIColor(red:0.43, green:0.51, blue:0.53, alpha:1.0)
                
            case UIImage(named: "rico1"):
                self.imageIam.image = UIImage(named: "rico2")
                self.labelIam.text = "Soy rico!!! 💎💰"
                self.view.backgroundColor = UIColor(red:0.87, green:0.84, blue:0.81, alpha:1.0)
                
            case UIImage(named: "rico2"):
                self.imageIam.image = UIImage(named: "rico3")
                self.labelIam.text = "Soy rico!!! 💎💰"
                self.view.backgroundColor = .white
                
            case UIImage(named: "rico3"):
                self.imageIam.image = UIImage(named: "rico1")
                self.labelIam.text = "Soy rico!!! 💎💰"
                self.view.backgroundColor = UIColor(red:0.43, green:0.51, blue:0.53, alpha:1.0)
                
            case .none:
                print("Caso innecesario")
            case .some(_):
                print("no entiendo .-.")
            }
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive) { (action) in
            self.labelIam.text = "Soy..."
            self.imageIam.image = UIImage(named: "misterio")
            self.view.backgroundColor = .white
        }
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { (action) in
            print("Cancelar")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
    }
    
    @IBAction func iAmPoor(_ sender: UIButton) {
        let controller = UIAlertController(title: "Soy pobre 😢", message: "Soy pobre\nNo lo merezco\nTambién soy bueno\nSaludable y seré exitoso", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            switch self.imageIam.image{
                
            case UIImage(named: "rico1"), UIImage(named: "rico2"), UIImage(named: "rico3"):
                self.imageIam.image = UIImage(named: "pobre1")
                self.labelIam.text = "Soy pobre 😰"
                self.view.backgroundColor = .white
                
            case UIImage(named: "misterio"):
                self.imageIam.image = UIImage(named: "pobre1")
                self.labelIam.text = "Soy pobre 😰"
                self.view.backgroundColor = .white
                
            case UIImage(named: "pobre1"):
                self.imageIam.image = UIImage(named: "pobre2")
                self.labelIam.text = "Soy pobre 😰"
                self.view.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0)
                
            case UIImage(named: "pobre2"):
                self.imageIam.image = UIImage(named: "pobre3")
                self.labelIam.text = "Soy pobre 😰"
                self.view.backgroundColor = .white
                
            case UIImage(named: "pobre3"):
                self.imageIam.image = UIImage(named: "pobre1")
                self.labelIam.text = "Soy pobre 😰"
                self.view.backgroundColor = .white
                
            case .none:
                print("Caso innecesario")
            case .some(_):
                print("no entiendo .-.")
            }
        }
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive) { (action) in
            self.labelIam.text = "Soy..."
            self.imageIam.image = UIImage(named: "misterio")
            self.view.backgroundColor = .white
        }
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { (action) in
            print("Cancelar")
        }
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
    }

}
