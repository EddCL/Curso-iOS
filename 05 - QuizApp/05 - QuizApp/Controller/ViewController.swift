//
//  ViewController.swift
//  05 - QuizApp
//
//  Created by Eduardo Carrillo on 3/21/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("\(sender.tag)")
    }
    
}

