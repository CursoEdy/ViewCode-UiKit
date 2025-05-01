//
//  ViewController.swift
//  ViewCodeProject
//
//  Created by ednardo alves on 30/04/25.
//

import UIKit

class ViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configElementsView()
    }

    func configElementsView() {
        view.addSubview(titleLabel)
        
        titleLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -150).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
    }

}

