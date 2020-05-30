//
//  ViewController.swift
//  YourStory
//
//  Created by Konstantin on 24.02.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {
    
    @IBOutlet var nameContainerView: UIView!
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet var inputContainerView: UIView!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var registrationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    @IBAction func registrationButtonDidPressed(_ sender: Any) {
        let registrationViewController = RegistrationViewControllerAssembly.createView()
        navigationController?.pushViewController(registrationViewController, animated: true)
       // navigationController?.present(registrationViewController, animated: true, completion: nil)
    }
    
    
    @IBAction func restorePasswordButtonDidPressed(_ sender: Any) {
        let restoreViewController = RestoreViewControllerAssembly.createView()
        navigationController?.pushViewController(restoreViewController, animated: true)
    }
}

extension LoginViewController {
    func setupView() {
        nameContainerView.layer.masksToBounds = true
        nameContainerView.layer.borderWidth = 1
        nameContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nameContainerView.layer.cornerRadius = 20
        
        passwordContainerView.layer.masksToBounds = true
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordContainerView.layer.cornerRadius = 20
        
        signInButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 40)
        signInButton.layer.cornerRadius = 15
        signInButton.layer.masksToBounds = true
        
        
        registrationView.layer.cornerRadius = 15
        registrationView.layer.masksToBounds = true
    }
}

