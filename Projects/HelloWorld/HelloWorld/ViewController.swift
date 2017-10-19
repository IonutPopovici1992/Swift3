//
//  ViewController.swift
//  HelloWorld
//
//  Created by John on 10/2/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func action(_ sender: UIButton) {
        output.text = "Hello, " + (input.text)! + "!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        output.layer.borderColor = UIColor.black.cgColor
        output.layer.borderWidth = 1
        output.layer.cornerRadius = 5
        
        input.layer.borderColor = UIColor.black.cgColor
        input.layer.borderWidth = 1
        input.layer.cornerRadius = 5
        
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
