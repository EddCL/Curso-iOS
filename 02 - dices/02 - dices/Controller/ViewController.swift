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
    let diceImages: [String]
    let nFaces : UInt32 //aquí es un elemento GLOBAL
    
    required init?(coder aDecoder: NSCoder) { //inicializa las variables que no se han inicializado antes (no tienen valor declarado)
        diceImages = ["uno", "dos", "tres", "cuatro", "cinco", "seis"]
        nFaces = UInt32(diceImages.count) //le ponemos un inicializador porque no podemos asignarle valor arriba
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomDices()
    }

    @IBAction func RollPressed(_ sender: UIButton) {
        generateRandomDices()
    }
    
    func generateRandomDices(){
        // usamos: let nFaces: UInt32 = UInt32(diceImages.count) para que sea una variable LOCAL //para asegurar que no crashee la app por si llegaramos a cambiar el numero de elementos de nuestro arreglo diceImages
        
        randomDiceIndexLeft = Int(arc4random_uniform(nFaces)) //casteo de uInt32 a Int;
        randomDiceINdexRight = Int(arc4random_uniform(nFaces)) //arc4random_uniform devuelve un entero de 32 bits sin signo
        
        diceLeft.image = UIImage(named: diceImages[randomDiceIndexLeft])
        diceRight.image = UIImage(named: diceImages[randomDiceINdexRight])
    }
    
}

