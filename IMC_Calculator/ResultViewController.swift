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
       icone.image = UIImage(named: imc.icone)
        
        
    }
    

}
