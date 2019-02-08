//
//  ViewController.swift
//  02 - dices
//
//  Created by Eduardo Carrillo on 2/8/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceINdexRight: Int = 0
    let diceImages: [String] = ["uno", "dos", "tres", "cuatro", "cinco", "seis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomDices()
    }

    @IBAction func RollPressed(_ sender: UIButton) {
        generateRandomDices()
    }
    
    func generateRandomDices(){
        let nFaces: UInt32 = UInt32(diceImages.count) //para asegurar que no crashee la app por si llegaramos a cambiar el numero de elementos de nuestro arreglo diceImages
        
        randomDiceIndexLeft = Int(arc4random_uniform(nFaces)) //casteo de uInt32 a Int;
        randomDiceINdexRight = Int(arc4random_uniform(nFaces)) //arc4random_uniform devuelve un entero de 32 bits sin signo
        
        diceLeft.image = UIImage(named: diceImages[randomDiceIndexLeft])
        diceRight.image = UIImage(named: diceImages[randomDiceINdexRight])
    }
    
}

