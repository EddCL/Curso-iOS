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
        self.labelTitle.text = "Pulsé el boton :B"
        // label.textColor, para cambiar el color del texto
        // .font, cambiar la fuente -> UIFont...
        self.imageViewDiamond.image = UIImage(named: "diamante")
        //self.buttonPush = "Pulsa otra vez"
        
    }
    
}
