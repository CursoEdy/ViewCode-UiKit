//
//  SecondViewController.swift
//  ViewCodeProject
//
//  Created by ednardo alves on 02/05/25.
//

import UIKit

class SecondViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .fullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
