//
//  SecondViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 2/11/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var textViewResult: UITextView!
    @IBOutlet weak var stepper: UIStepper!
    
    var fibonacci : [Int] = [0,1]
    
    var fibonacciID = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel(id: Int(self.stepper.value))
    }
    
    func generateFibonacciNumbers(){
        //Generar numeros de fibonacci hasta fibonacciID
        fibonacci = [0,1]
        for i in 2...fibonacciID {
            fibonacci.append(fibonacci[i-1] + fibonacci[i-2])
        }
        let fibStr : [String] = fibonacci.compactMap({String($0)})
        let result : String = fibStr.joined(separator: "\n")
        
        textViewResult.text = "\(result)"
    }
    
    func updateLabel(id: Int){
        self.fibonacciID = id
        self.labelNumber.text = "\(self.fibonacciID)"
        generateFibonacciNumbers()
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
       updateLabel(id: Int(sender.value))
    }
    
    


}

