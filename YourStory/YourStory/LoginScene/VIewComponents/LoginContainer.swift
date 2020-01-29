//
//  LoginContainer.swift
//  YourStory
//
//  Created by Konstantin on 26.01.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit
import SnapKit

class LoginContainer: UIView {
    
    let containerView = UIImageView()
    let whiteContainer = UIView()
    let loginTextField = UITextField()
    let loginLine = UIView()
    let passwordTextField = UITextField()
    let passwordLine = UIView()
    let loginButton = UIButton()
    let registrationButton = UIButton()
    let anonimLogin = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: SetupView

extension LoginContainer {
    private func setupView() {
        addSubview(containerView)
        containerView.image = UIImage(named: "containerLogin")
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        containerView.addSubview(whiteContainer)
        whiteContainer.backgroundColor = .white
        whiteContainer.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.left.equalToSuperview().offset(Constants.WhiteContainer.topLeftOffset)
            make.bottom.equalToSuperview().inset(Constants.WhiteContainer.bottomInset)
        }
        
        whiteContainer.addSubview(loginTextField)
        // TODO: Localization
        loginTextField.placeholder = "Логин"
        loginTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(Constants.LoginTextField.topOffset)
            make.left.equalToSuperview().offset(Constants.LoginTextField.leftOffset)
        }
        
        whiteContainer.addSubview(loginLine)
        loginLine.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.4352941176, blue: 0.4, alpha: 1)
        loginLine.snp.makeConstraints { make in
            make.width.equalTo(loginTextField)
            make.height.equalTo(Constants.LoginLine.height)
            make.top.equalTo(loginTextField.snp.bottom).inset(Constants.LoginLine.topInset)
            make.centerX.equalToSuperview()
        }
        
        whiteContainer.addSubview(passwordTextField)
        // TODO: Localization
        passwordTextField.placeholder = "Пароль"
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginLine.snp.bottom).offset(Constants.PasswordTextField.topOffset)
            make.left.equalToSuperview().offset(Constants.PasswordTextField.leftOffset)
        }
        
        whiteContainer.addSubview(passwordLine)
        passwordLine.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.4352941176, blue: 0.4, alpha: 1)
        passwordLine.snp.makeConstraints { make in
            make.width.equalTo(loginTextField)
            make.height.equalTo(Constants.PasswordLine.height)
            make.top.equalTo(passwordTextField.snp.bottom).inset(Constants.PasswordLine.topInset)
            make.centerX.equalToSuperview()
        }
        
        whiteContainer.addSubview(loginButton)
        // TODO: Localization
        loginButton.setTitle("Войти", for: [])
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginButton.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.4352941176, blue: 0.4, alpha: 1)
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(Constants.LoginButton.leftOffset)
            make.top.equalTo(passwordLine.snp.bottom).offset(Constants.LoginButton.topOffset)
            make.height.equalTo(Constants.LoginButton.height)
        }
        
        whiteContainer.addSubview(registrationButton)
        registrationButton.setTitle("Регистрация", for: [])
        registrationButton.setTitleColor(.black, for: [])
        registrationButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(Constants.RegistrationButton.leftOffset)
            make.top.equalTo(loginButton.snp.bottom)
            make.height.equalTo(Constants.RegistrationButton.height)
        }
    }
}

// MARK: Constants

extension LoginContainer {
    struct Constants {
        struct WhiteContainer {
            static let topLeftOffset: CGFloat = 16
            static let bottomInset: CGFloat = 40
        }
        
        struct LoginTextField {
            static let topOffset: CGFloat = 16
            static let leftOffset: CGFloat = 16
        }
        
        struct LoginLine {
            static let height: CGFloat = 4
            static let topInset: CGFloat = 1
        }
        
        struct PasswordTextField {
            static let topOffset: CGFloat = 16
            static let leftOffset: CGFloat = 16
        }
        
        struct PasswordLine {
            static let height: CGFloat = 4
            static let topInset: CGFloat = 1
        }
        
        struct LoginButton {
            static let leftOffset: CGFloat = 20
            static let topOffset: CGFloat = 22
            static let height: CGFloat = 55
        }
        
        struct RegistrationButton {
            static let leftOffset: CGFloat = 16
            static let height: CGFloat = 60
        }
        
    }
}
