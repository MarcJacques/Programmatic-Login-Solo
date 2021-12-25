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
//        imageView.frame = CGRect(x: 125, y: 150, width: 200, height: 50)
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints  = false
        return imageView
    }()
    
    private let usernameTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Email"
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
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let mainStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.spacing = 20
        return stack
    }()

    private let loginStackView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.spacing = 20
        return stack
    }()
    
    private let userInfoStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

    }
    
    func setupView() {
        view.backgroundColor = UIColor(red: 0.26, green: 0.40, blue: 0.70, alpha: 1.00)
        
        setupMainStackView()
    }
    
    
    
    func setupMainStackView() {
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(facebookBrand)
        mainStackView.addArrangedSubview(userInfoStackView)
    
//        mainStackView.heightAnchor.constraint(equalToConstant: view.frame.height - 250).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        mainStackView.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

//        mainStackView.topAnchor.constraint(equalTo: facebookBrand.bottomAnchor, constant: 20).isActive = true
//        mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 20).isActive = true
//        mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
//        mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true

        facebookBrand.topAnchor.constraint(equalTo: mainStackView.topAnchor).isActive = true
        facebookBrand.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 125).isActive = true
        facebookBrand.heightAnchor.constraint(equalToConstant: 50).isActive = true
        facebookBrand.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -125).isActive = true
//        facebookBrand.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 200).isActive = true
            
        userInfoStackView.topAnchor.constraint(equalTo: facebookBrand.bottomAnchor, constant: 60).isActive = true
        userInfoStackView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor).isActive = true
        userInfoStackView.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor).isActive = true
//        userInfoStackView.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor).isActive = true
        userInfoStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        userInfoStackView.centerYAnchor.constraint(equalTo: mainStackView.centerYAnchor).isActive = true
//        userInfoStackView.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor).isActive = true
        
        setupUserInfoStackView()
        mainStackView.addArrangedSubview(loginButton)
        
    }
    
    func setupUserInfoStackView(){
       //userinfostackview includes the username and password textfields
        
        userInfoStackView.addArrangedSubview(usernameTextField)
        userInfoStackView.addArrangedSubview(passwordTextField)
        
        usernameTextField.topAnchor.constraint(equalTo: userInfoStackView.bottomAnchor, constant: 20).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: userInfoStackView.leftAnchor, constant: 20).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: userInfoStackView.rightAnchor, constant: -20).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: userInfoStackView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: userInfoStackView.rightAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
//
//    func setupStackViews() {
////        view.addSubview(mainStackView)

//
//        userInfoStackView.addArrangedSubview(usernameTextField)
//        userInfoStackView.addArrangedSubview(passwordTextField)
//
//        //mainStack includes userinfoStack and login button
//
//
  
//
//        mainStackView.addArrangedSubview(facebookBrand)
////        mainStackView.addArrangedSubview(userInfoStackView)
////        mainStackView.addArrangedSubview(loginButton)
//
//
////        view.addSubview(mainStackView)
////
////        mainStackView.axis = .vertical
////        mainStackView.alignment = .fill
////        mainStackView.distribution = .fill
////
//////        stackView.addArrangedSubview(facebookBrand)
////        mainStackView.addArrangedSubview(usernameTextField)
////        mainStackView.addArrangedSubview(passwordTextField)
//////        stackView.addArrangedSubview(loginButton)
////
////        mainStackView.translatesAutoresizingMaskIntoConstraints = false
//////        stackView.frame.origin.x = view.frame.width/2 - stackView.frame.width/2
//////        stackView.frame.origin.y = view.frame.height/2 - stackView.frame.width/2
////
////        mainStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
////        mainStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
////        mainStackView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
////        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
////
////        facebookBrand.heightAnchor.constraint(equalToConstant: 50).isActive = true
//////        facebookBrand.widthAnchor.constraint(equalTo: facebookBrand.heightAnchor, multiplier: 2.0).isActive = true
////        facebookBrand.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant: 20).isActive = true
////        facebookBrand.leftAnchor.constraint(equalTo: mainStackView.leftAnchor, constant: 20).isActive = true
////
      
//////
//////        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
//////        loginButton.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 180).isActive = true
//////        loginButton.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: -180).isActive = true
//////        loginButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
//////
//
//       }
//
//
//    func setStackViewConstraints() {
//
//        mainStackView.frame.origin.x = view.frame.width/2 - mainStackView.frame.width/2
//        mainStackView.frame.origin.y = view.frame.height/2 - mainStackView.frame.width/2
//        mainStackView.translatesAutoresizingMaskIntoConstraints = false
//
//        mainStackView.topAnchor.constraint(equalTo: facebookBrand.bottomAnchor, constant: 20).isActive = true
//        mainStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        mainStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        mainStackView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
//        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//        usernameTextField.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant: 20).isActive = true
//        usernameTextField.leftAnchor.constraint(equalTo: mainStackView.leftAnchor, constant: 20).isActive = true
//        usernameTextField.rightAnchor.constraint(equalTo: mainStackView.rightAnchor, constant: -20).isActive = true
//        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
//
//        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
//        passwordTextField.leftAnchor.constraint(equalTo: mainStackView.leftAnchor, constant: 20).isActive = true
//        passwordTextField.rightAnchor.constraint(equalTo: mainStackView.rightAnchor, constant: -20).isActive = true
//        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
//
//        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
//        loginButton.leftAnchor.constraint(equalTo: mainStackView.leftAnchor, constant: 180).isActive = true
//        loginButton.rightAnchor.constraint(equalTo: mainStackView.rightAnchor, constant: -180).isActive = true
//        loginButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
//    }
    
}




