//
//  LoginViewController.swift
//  iChat
//
//  Created by Роман on 23.07.2024.
//

import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    var welcomeUILabel = UILabel(text: "Welcome back!", font: .avenir26())
    
    let loginWithUILabel = UILabel(text: "Login with")
    let orUILabel = UILabel(text: "or")
    let emailUILabel = UILabel(text: "Email")
    let passwordUILabel = UILabel(text: "Password")
    let needAnAccountUILabel = UILabel(text: "Need an account?")
    
    let googleUIButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
    let loginUIButton = UIButton(title: "Login", titleColor: .white, backgroundColor: .buttonDark())
    let signInUIButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.buttonRed(), for: .normal)
        button.titleLabel?.font = .avenir20()
        return button
    }()
    
    let emailUITextField = OneLineTextField(font: .avenir20())
    let passwordUITextField = OneLineTextField(font: .avenir20())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension LoginViewController {
    private func setupConstraints() {
        let login = ButtonFromView(label: loginWithUILabel, button: googleUIButton)
        
        loginUIButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let emailUIStackView = UIStackView(arrangedSubviews: [emailUILabel, emailUITextField], axis: .vertical, spacing: 0)
        let passwordUIStackView = UIStackView(arrangedSubviews: [passwordUILabel, passwordUITextField], axis: .vertical, spacing: 0)
        let finalUIStackView = UIStackView(arrangedSubviews: [login,
                                                              orUILabel,
                                                              emailUIStackView,
                                                              passwordUIStackView,
                                                              loginUIButton], axis: .vertical, spacing: 30)
        let bottomUIStackView = UIStackView(arrangedSubviews: [needAnAccountUILabel, signInUIButton], axis: .horizontal, spacing: -60)
        
        welcomeUILabel.translatesAutoresizingMaskIntoConstraints = false
        finalUIStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomUIStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeUILabel)
        view.addSubview(finalUIStackView)
        view.addSubview(bottomUIStackView)
        
        NSLayoutConstraint.activate([
            welcomeUILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            welcomeUILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            finalUIStackView.topAnchor.constraint(equalTo: welcomeUILabel.bottomAnchor, constant: 40),
            finalUIStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            finalUIStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            finalUIStackView.heightAnchor.constraint(equalToConstant: 400)
        ])
        NSLayoutConstraint.activate([
            bottomUIStackView.topAnchor.constraint(equalTo: finalUIStackView.bottomAnchor, constant: 30),
            bottomUIStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomUIStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

// MARK: - SwiftUI: Canvas
struct loginControllerProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> LoginViewController {
            return viewController
        }
        
        let viewController = LoginViewController()
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
