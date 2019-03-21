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
    @IBOutlet weak var labelGoldNum: UILabel!
    
    var fibonacci : [Int] = [0,1]
    var fibonacciID = 2
    var wantsGoldNum = false

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
        calculateGoldNum()
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
       updateLabel(id: Int(sender.value))
    }
    
    @IBAction func switchMoved(_ sender: UISwitch) {
        self.wantsGoldNum = sender.isOn
        calculateGoldNum()
    }
    
    func calculateGoldNum(){
        if (self.wantsGoldNum) {
            //hay que generar el numero de oro como cociente entre los dos ultimos de fibonacci
            let last = Double(fibonacci[fibonacci.count - 1])
            let previous = Double(fibonacci[fibonacci.count - 2])
            let goldNum = last/previous
            
            self.labelGoldNum.text = "\(goldNum)"
        }else {
            //Poner texto por defecto en la etiqueta
            self.labelGoldNum.text = "Ver el número de oro"
        }
    }
}

