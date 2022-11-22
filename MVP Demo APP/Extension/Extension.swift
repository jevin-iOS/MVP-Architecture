//
//  Extension.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func displayAlert(title txtTitle: String, message msg: String) {
        
        let alertVC = UIAlertController(title: txtTitle, message: msg, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in }))
        
        
        self.present(alertVC, animated: true)
        
        
    }
}
