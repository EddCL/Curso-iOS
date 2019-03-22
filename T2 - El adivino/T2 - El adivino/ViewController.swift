//
//  ViewController.swift
//  T2 - El adivino
//
//  Created by Eduardo Carrillo on 3/22/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomAnswerNum: Int = 0
    let uranaiAnswers: [String] = ["...", "Sí", "No", "Puede ser", "No tengo ni idea", "Sin duda alguna", "No lo tengo muy claro", "Jajajajajaja", "¿Realmente quieres saber?", "Claro que no", "Por supuesto que no"]
    let uranaiAnswerImages: [String] = ["talVez", "si", "no", "duda", "losiento", "claroQueSi", "loDudo", "risa", "quee", "claroQueNo", "noooo"]
    let numberOfAnswers: UInt32
    
    
    required init?(coder aDecoder: NSCoder) {
        numberOfAnswers = UInt32(uranaiAnswers.count)
        super.init(coder: aDecoder)
    }
    
    @IBOutlet weak var uranaiAnswer: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func randomAnswer(){
        randomAnswerNum = Int(arc4random_uniform(numberOfAnswers))
        UIView.animate(withDuration: 0.4, delay: 0, options: UIView.AnimationOptions.curveEaseIn, animations:{
            self.uranaiAnswer.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
            self.uranaiAnswer.alpha = 0.0
            
            self.answerImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
            self.answerImage.alpha = 0.0
        }) {(completed) in
            self.uranaiAnswer.transform = CGAffineTransform.identity
            self.uranaiAnswer.alpha = 1.0
            self.uranaiAnswer.text = self.uranaiAnswers[self.randomAnswerNum]
            
            self.answerImage.transform = CGAffineTransform.identity
            self.answerImage.alpha = 1.0
            self.answerImage.image = UIImage(named: self.uranaiAnswerImages[self.randomAnswerNum])
        }
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomAnswer()
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            randomAnswer()
        }
    }

}

