//
//  RegistrationViewController.swift
//  YourStory
//
//  Created by Konstantin on 13.05.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet var nameContainerView: UIView!
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var passwordContainerView: UIView!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var registrationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

private extension RegistrationViewController {
    private func setupView() {
        nameContainerView.layer.masksToBounds = true
        nameContainerView.layer.borderWidth = 1
        nameContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nameContainerView.layer.cornerRadius = 20
        
        passwordContainerView.layer.masksToBounds = true
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordContainerView.layer.cornerRadius = 20
        
        emailContainerView.layer.masksToBounds = true
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailContainerView.layer.cornerRadius = 20
        
        signInButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 40)
        signInButton.layer.cornerRadius = 15
        signInButton.layer.masksToBounds = true
        
        
        registrationView.layer.cornerRadius = 15
        registrationView.layer.masksToBounds = true
    }
}
