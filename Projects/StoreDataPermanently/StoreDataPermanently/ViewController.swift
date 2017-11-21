//
//  ViewController.swift
//  StoreDataPermanently
//
//  Created by John on 11/17/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func action(_ sender: UIButton) {
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "initialName")
        input.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let x = UserDefaults.standard.object(forKey: "initialName") as? String {
            output.text = x
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
