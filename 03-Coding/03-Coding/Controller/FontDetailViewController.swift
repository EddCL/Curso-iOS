//
//  FontDetailViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 3/20/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class FontDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var pickerFonts: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    var familyName: String = ""
    var fonts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.labelTitle.text = familyName
        self.labelTitle.font = UIFont(name: familyName, size: 20.0)
        
        if fonts.count == 0 {
            self.pickerFonts.isHidden = true
        }
        //Forma en código de vincular el elemento a los protocolos (?), como lo que hicimos con el tableView, de arrastrando (visualmente)
        self.pickerFonts.dataSource = self
        self.pickerFonts.delegate = self
        
        self.textView.font  = UIFont(name: familyName, size: 15.0)
        
    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) //sin el completion:
    }

    //MARK: Métodos del protocolo de UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //Para el número de columnas (componentes) que tendrá el picker
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //Para el número de filas en el picker
        return self.fonts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fonts[row]
    }
    
    //MARK: Métodos del protocolo UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let font = self.fonts[row]
        self.textView.font = UIFont(name: font, size: 17.0)
    }

}
