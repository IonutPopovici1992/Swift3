//
//  ViewController.swift
//  AudioPlayer
//
//  Created by John on 10/31/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    
    @IBAction func replay(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        do {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            // ERROR
        }
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
