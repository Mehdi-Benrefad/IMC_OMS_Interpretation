//
//  ViewController.swift
//  IMC_Calculator
//
//  Created by Mehdi Benrefad on 03/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taille: UILabel!
    @IBOutlet weak var poid: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Taille(_ sender: UISlider) {
        taille.text = String(format: "%.2f",sender.value)
    }
    
    @IBAction func Poid(_ sender: UISlider) {
        poid.text = String(format: "%.2f",sender.value)
    }
}

