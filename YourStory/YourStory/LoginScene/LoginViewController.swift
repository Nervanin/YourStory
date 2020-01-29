//
//  LoginViewController.swift
//  YourStory
//
//  Created by Konstantin on 19.01.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let ballsImageView = UIImageView()
    let heartImageView = UIImageView()
    let loginView = LoginContainer()
    
    var ballsMidY = CGFloat()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ballsMidY = ballsImageView.frame.origin.y
        

        viewAnimated()
    }
}

// MARK: SetupView

extension LoginViewController {
    fileprivate func setupView() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(backgroundImageView)
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = UIImage(named: "backgroundAuth")
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        backgroundImageView.addSubview(ballsImageView)
        ballsImageView.image = UIImage(named: "ballsAuth")
        ballsImageView.contentMode = .scaleAspectFill
        ballsImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        backgroundImageView.addSubview(heartImageView)
        heartImageView.image = UIImage(named: "heart")
        heartImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalToSuperview().offset(Constants.HeartImageView.topOffset)
            make.size.equalTo(Constants.HeartImageView.size)
        }
        
        backgroundImageView.addSubview(loginView)
        
        loginView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(heartImageView.snp.bottom).offset(Constants.ContainerView.topOffset)
            make.left.equalToSuperview().offset(Constants.ContainerView.leftOffset)
            make.height.equalTo(Constants.ContainerView.height)
        }
    }
}

// MARK: Animate

extension LoginViewController {
    func viewAnimated() {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {
            //
        }, completion: nil)
    }
}


// MARK: Constants

extension LoginViewController {
    struct Constants {
        struct HeartImageView {
            static let topOffset: CGFloat = 100
            static let size: CGFloat = 150
        }
        struct ContainerView {
            static let topOffset: CGFloat = 40
            static let leftOffset: CGFloat = 30
            static let height: CGFloat = 270
        }
        
    }
}
