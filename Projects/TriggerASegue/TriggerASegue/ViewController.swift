//
//  ViewController.swift
//  TriggerASegue
//
//  Created by John on 11/3/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func yes(_ sender: UIButton) {
        performSegue(withIdentifier: "yes", sender: self)
    }
    
    @IBAction func no(_ sender: UIButton) {
        performSegue(withIdentifier: "no", sender: self)
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
