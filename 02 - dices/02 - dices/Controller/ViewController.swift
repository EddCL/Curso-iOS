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
        
        //Agregamos una animación
        UIView.animate(withDuration: 0.4, delay: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.diceLeft.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(translationX: 150, y: -200)).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
            self.diceRight.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(translationX: -150, y: -200)).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
            
            self.diceLeft.alpha = 0.0
            self.diceRight.alpha = 0.0
            
        }) { (completed) in
            self.diceLeft.transform = CGAffineTransform.identity
            self.diceRight.transform = CGAffineTransform.identity
            
            self.diceLeft.alpha = 1.0
            self.diceRight.alpha = 1.0
            
            self.diceLeft.image = UIImage(named: self.diceImages[self.randomDiceIndexLeft])
            self.diceRight.image = UIImage(named: self.diceImages[self.randomDiceINdexRight])
        }
    }
    
    //Para poder hacer uso del motionShake
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            generateRandomDices()
        }
    }
    
}

