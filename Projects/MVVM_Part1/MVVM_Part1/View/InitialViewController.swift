//
//  InitialViewController.swift
//  MVVM_Part1
//
//  Created by John on 5/14/18.
//  Copyright © 2018 John. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var petName: UILabel!
    @IBOutlet weak var petLegs: UILabel!
    @IBOutlet weak var petDescripion: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewModel = DogViewModel(name: "Fido")
        
        petName.text = viewModel.dogName
        petLegs.text = viewModel.dogLegs
        petDescripion.text = viewModel.dogNameAndLegs
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
