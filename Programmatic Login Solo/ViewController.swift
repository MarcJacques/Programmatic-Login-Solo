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
    
    //    private let usernameTextField: UITextField = {
    //        let textfield = UITextField()
    //
    //        return textfield
    //    }()
    //
    //private let passwordTextField: UITextField = {
    //}()
    
    //    private let loginButton: UIButton = {
    //
    //    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.26, green: 0.40, blue: 0.70, alpha: 1.00)
        view.addSubview(facebookBrand)
    }
    
    func setupStackView() {
        var stackView: UIStackView = {
            let stack = UIStackView()
            stack.axis = .vertical
            stack.spacing = 20.0
            stack.alignment = .center
            stack.distribution = .fillEqually
            [self.facebookBrand] { stack.addArrangedSubview($0) }
            return stack
        }()
    }
}



}

