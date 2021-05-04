//
//  ViewController.swift
//  IMC_Calculator
//
//  Created by Mehdi Benrefad on 03/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imc = IMC(poid: 1.5, taille: 60)
    @IBOutlet weak var taille: UILabel!
    @IBOutlet weak var poid: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Taille(_ sender: UISlider) {
        taille.text = String(format: "%.2f",sender.value)
        imc.taille = sender.value
    }
    
    @IBAction func Poid(_ sender: UISlider) {
        poid.text = String(format: "%.2f",sender.value)
        imc.poid = sender.value
    }
    
    @IBAction func tester(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResult"{
            //recuperer le controlleur de destination
            var imc2 = segue.destination as! ResultViewController
            imc2.imc = self.imc
         
            //ce segue sera lance dans la methode valider en haut
        }
    }
}

