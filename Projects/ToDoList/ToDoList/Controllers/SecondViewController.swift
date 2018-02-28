//
//  SecondViewController.swift
//  ToDoList
//
//  Created by John on 2/27/18.
//  Copyright © 2018 John. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: UIButton) {
        if input.text != "" {
            list.append(input.text!)
            input.text = ""
        }
    }
    
}
