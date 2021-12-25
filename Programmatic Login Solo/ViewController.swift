//
//  ViewController.swift
//  Programmatic Login Solo
//
//  Created by Marc Jacques on 12/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let facebookBrand: UIImageView = {
        let imageName = "facebookLogo"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        return imageView
    }()
    
    private let usernameTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Username"
        textfield.backgroundColor = .white
        textfield.borderStyle = .roundedRect
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private let passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.backgroundColor = .white
        textfield.borderStyle = .roundedRect
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.26, green: 0.40, blue: 0.70, alpha: 1.00)
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        
        
        facebookBrand.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        facebookBrand.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        facebookBrand.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        facebookBrand.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(stackView)
        
//        stackView.addSubview(facebookBrand)
        stackView.addSubview(usernameTextField)
        stackView.addSubview(passwordTextField)
        stackView.addSubview(loginButton)
        
        
        setStackViewConstraints()
    }
    
    func setStackViewConstraints() {
        
//        stackView.frame.origin.x = view.frame.width/2 - stackView.frame.width/2
//        stackView.frame.origin.y = view.frame.height/2 - stackView.frame.width/2
        stackView.translatesAutoresizingMaskIntoConstraints = false
  
        stackView.topAnchor.constraint(equalTo: facebookBrand.bottomAnchor, constant: 20).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        usernameTextField.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 20).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 20).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -20).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 180).isActive = true
        loginButton.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -180).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
}




