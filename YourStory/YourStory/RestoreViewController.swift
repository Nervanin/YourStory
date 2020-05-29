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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
}

private extension RestoreViewController {
    private func setupView() {
        emailContainerView.layer.masksToBounds = true
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailContainerView.layer.cornerRadius = 15
    }
}
