//
//  SecondViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 2/11/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fibonacci : [Int] = [0,1]
    
    var fibonacciID = 1

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func generateFibonacciNumbers(){
        if fibonacciID <= 1 || fibonacciID > 100{
            return
        }
    }


}

