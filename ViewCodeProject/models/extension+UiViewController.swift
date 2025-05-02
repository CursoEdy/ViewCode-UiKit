//
//  extension+UiViewController.swift
//  ViewCodeProject
//
//  Created by ednardo alves on 02/05/25.
//

import Foundation
import UIKit

extension UIViewController {
    
    // Alert generico
    func presentAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
        present(alert, animated: true)
    }
    
    // Alerta personalizado
    func presentPersonalizedAlert(title: String, msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            let vc = SecondViewController()
            self.present(vc, animated: true)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}

