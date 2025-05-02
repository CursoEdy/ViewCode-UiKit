//
//  ViewController.swift
//  ViewCodeProject
//
//  Created by ednardo alves on 30/04/25.
//

import UIKit

class ViewController: UIViewController {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Cadastra-se!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var  button: UIButton = {
        let  button = UIButton()
        button.setTitle("Criar um nova conta.", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = UIColor.white
//        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleButtonAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configElementsView()
    }
    
    @objc func handleButtonAction() {
        presentPersonalizedAlert(title: "Aviso", msg: "Deseja realmente criar uma nova conta?")
    }
    
    func configElementsView() {
        
        view.addSubview(button)
        view.addSubview(titleLabel)
        
        // MARK: Constraints
        
        // Title label
        titleLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: 0).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let safeArea = view.safeAreaInsets.bottom
        let width: CGFloat = view.frame.width - 40
        let height: CGFloat = 50
        let xPosition = view.frame.width / 2 - width / 2
        let yPosition = view.frame.height - height - safeArea
        
        button.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
    }

}

