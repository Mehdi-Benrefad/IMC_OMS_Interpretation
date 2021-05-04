//
//  ResultViewController.swift
//  IMC_Calculator
//
//  Created by Mehdi Benrefad on 04/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var icone: UIImageView!
    @IBOutlet var viewResult: UIView!
    @IBOutlet weak var resultText: UILabel!
    var imc = IMC()
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(imc)
        resultText.text = imc.remarque
        viewResult.backgroundColor=imc.couleur
        // Do any additional setup after loading the view.
       
        switch imc.evaluation{
        case  18,5..<25:
            icone.image = UIImage(named: "success")
        case 25..<30:
            icone.image = UIImage(named: "warning1")
        case 30..<35:
            icone.image = UIImage(named: "warning2")
        case 35..<40:
            icone.image = UIImage(named: "warning3")
        case 0..<18,5:
            icone.image = UIImage(named: "stop2")
        default:
            icone.image = UIImage(named: "stop2")
        }
        
    }
    

}
