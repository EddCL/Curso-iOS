//
//  ThirdViewController.swift
//  03-Coding
//
//  Created by Eduardo Carrillo on 2/11/19.
//  Copyright © 2019 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var families : [String] = []
    var fonts : [String: [String]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        families = UIFont.familyNames
        
        for fam in families{
            fonts[fam] = UIFont.fontNames(forFamilyName: fam)
        }
        print(fonts)
    }
    
    //MARK: Métodos del protocolo UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.families.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FontFamilyCell", for: indexPath)
        
        cell.textLabel?.text = families[indexPath.row]
        
        return cell
    }

}
