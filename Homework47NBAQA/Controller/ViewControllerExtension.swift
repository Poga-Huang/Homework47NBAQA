//
//  ViewControllerExtension.swift
//  Homework47NBAQA
//
//  Created by 黃柏嘉 on 2021/12/30.
//

import Foundation
import UIKit

struct segueIdentifier{
    static let textQuestionSegue = "TextQShowResult"
    static let imageQuestionSegue = "ImageQShowResult"
}


extension UIViewController{
    func alert(title:String,message:String,handler:@escaping ()->()){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title:"Continue" , style: .default) { okAction in
            handler()
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
