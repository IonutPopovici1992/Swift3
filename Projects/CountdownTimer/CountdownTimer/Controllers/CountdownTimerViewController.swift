//
//  CountdownTimerViewController.swift
//  CountdownTimer
//
//  Created by John on 2/28/18.
//  Copyright © 2018 John. All rights reserved.
//

import UIKit
import AVFoundation

class CountdownTimerViewController: UIViewController {
    
    var seconds = 30
    var timer = Timer()
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderAction(_ sender: UISlider) {
        seconds = Int(sender.value)
        label.text = String(seconds) + " Seconds"
    }
    
    @IBOutlet weak var startButton: UIButton!
    @IBAction func startButtonAction(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(counter),
                                     userInfo: nil,
                                     repeats: true)
        
        slider.isHidden = true
        startButton.isHidden = true
    }
    
    @objc func counter() {
        seconds -= 1
        label.text = String(seconds) + " Seconds"
        
        if seconds == 0 {
            timer.invalidate()
            
            audioPlayer.play()
        }
    }
    
    @IBOutlet weak var stopButton: UIButton!
    @IBAction func stopButtonAction(_ sender: UIButton) {
        timer.invalidate()
        seconds = 30
        slider.setValue(30, animated: true)
        label.text = "30 Seconds"
        
        audioPlayer.stop()
        
        slider.isHidden = false
        startButton.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let audioPath = Bundle.main.path(forResource: "sound", ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        } catch {
            // ERROR
        }
    }
    
}
