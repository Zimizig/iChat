//
//  SignUpViewController.swift
//  iChat
//
//  Created by Роман on 23.07.2024.
//

import UIKit
import SwiftUI

class SignUpViewController: UIViewController {
    
    var welcomeUILabel = UILabel(text: "Good to see you!", font: .avenir26())
    
    
    let emailUILabel = UILabel(text: "Email")
    let passwordUILabel = UILabel(text: "Password")
    let confirmPasswordUILabel = UILabel(text: "Confirm password")
    let alreadyOnBoardUILabel = UILabel(text: "Already on board?")
    
    let emailUITextField = OneLineTextField(font: .avenir20())
    let passwordUITextField = OneLineTextField(font: .avenir20())
    let confirmPasswordUITextField = OneLineTextField(font: .avenir20())
    
    let signUpButton = UIButton(title: "Sign Up", titleColor: .white, backgroundColor: .buttonDark(),cornerRadius: 4 )
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonRed(), for: .normal)
        loginButton.backgroundColor = .clear
        loginButton.titleLabel?.font = .avenir20()
        view.backgroundColor = .systemGray4
        
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension SignUpViewController {
    private func setupConstraints() {
        let emailUIStackView = UIStackView(arrangedSubviews: [emailUILabel, emailUITextField], axis: .vertical, spacing: 0)
        let passwordUIStackView = UIStackView(arrangedSubviews: [passwordUILabel, passwordUITextField], axis: .vertical, spacing: 0)
        let confirmPasswordUIStackView = UIStackView(arrangedSubviews: [confirmPasswordUILabel, confirmPasswordUITextField], axis: .vertical, spacing: 0)
         
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let finalStackView = UIStackView(arrangedSubviews: [emailUIStackView,
                                                            passwordUIStackView,
                                                            confirmPasswordUIStackView,
                                                            signUpButton
                                                           ], axis: .vertical, spacing: 40 )
        
        let bottomUIStackView = UIStackView(arrangedSubviews: [alreadyOnBoardUILabel, loginButton], axis: .horizontal, spacing: -1)
        
        finalStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomUIStackView.translatesAutoresizingMaskIntoConstraints = false
        welcomeUILabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeUILabel)
        view.addSubview(finalStackView)
        view.addSubview(bottomUIStackView)
        
        NSLayoutConstraint.activate([ 
            welcomeUILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            welcomeUILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            finalStackView.topAnchor.constraint(equalTo: welcomeUILabel.bottomAnchor, constant: 160),
            finalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40),
            finalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            bottomUIStackView.topAnchor.constraint(equalTo: finalStackView.bottomAnchor, constant: 20),
            bottomUIStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomUIStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
        ])
    }
}

// MARK: - SwiftUI: Canvas
struct SignUpViewControllerProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = SignUpViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SignUpViewControllerProvider.ContainerView>) -> SignUpViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
