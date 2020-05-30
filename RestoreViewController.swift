//
//  RestoreViewController.swift
//  YourStory
//
//  Created by Konstantin on 28.05.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit

class RestoreViewController: UIViewController {
    
    @IBOutlet var emailContainerView: UIView!
    @IBOutlet var registrationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func signInButtonDidPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

private extension RestoreViewController {
    private func setupView() {
        emailContainerView.layer.masksToBounds = true
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailContainerView.layer.cornerRadius = 15
        
        
        registrationView.layer.cornerRadius = 15
        registrationView.layer.masksToBounds = true
    }
}
