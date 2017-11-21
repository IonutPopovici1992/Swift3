//
//  ViewController.swift
//  TimerApp
//
//  Created by John on 11/2/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var time = 0
    
    // timer
    var timer = Timer()
    
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.action)), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        // timer.invalidate()
        time = 0
        label.text = "0"
    }
    
    @objc func action() {
        time += 1
        label.text = String(time)
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
