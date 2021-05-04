//
//  IMC.swift
//  IMC_Calculator
//
//  Created by Mehdi Benrefad on 04/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import Foundation
import UIKit

struct IMC {
    var poid = Float()
    var taille = Float()
    var evaluation: Float{
        get{
            return poid/pow(taille,2)
            
        }
    }
    
    var remarque: String {
        get{
            return message_couleur().0
        }
    }
    
    var couleur : UIColor{
        get{
            return message_couleur().1
        }
    }
    
    func message_couleur() -> (String,UIColor){
        var evaluation: Float{
            get{
                return poid/pow(taille,2)
            }
        }
        
        switch evaluation{
        case  18,5..<25:
            return ("Poids normale, votre IMC =\(evaluation)",UIColor.green)
        case 25..<30:
            return ("Surpoids, votre IMC =\(evaluation)",UIColor.yellow)
        case 30..<35:
            return("Obésité modérée, votre IMC =\(evaluation)",UIColor.orange)
        case 35..<40:
            return("Obésité sévère, votre IMC =\(evaluation)",UIColor.red)
        default:
            return("Obésité massive, votre IMC =\(evaluation)",UIColor.black)
        }
       
    }
}
