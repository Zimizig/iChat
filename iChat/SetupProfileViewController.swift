//
//  SetupProfileViewController.swift
//  iChat
//
//  Created by Роман on 24.07.2024.
//

import UIKit
import SwiftUI

class SetupProfileViewController: UIViewController {
    
    let welcomeUILabel = UILabel(text: "Set up profile! ", font: .avenir26())
    
    let fullNameUILabel = UILabel(text: "Full name")
    let aboutMeUILabel = UILabel(text: "About me")
    let genderUILabel = UILabel(text: "Gender")
    
    let fullNameUITextField = OneLineTextField(font: .avenir20())
    let aboutMeUITextField = OneLineTextField(font: .avenir20())
    
    let genderUISegmentedControll = UISegmentedControl(first: "Male", second: "Femail ", selectedSegmentTintColor: .buttonWhite())
    
    let goToChatsUIButton = UIButton(title: "Go to chats!", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    
    
    let fullImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension SetupProfileViewController {
    private func setupConstraints() {
        
        let fullNameUIStackView = UIStackView(arrangedSubviews: [fullNameUILabel, fullNameUITextField],
                                              axis: .vertical, spacing: 0)
        let aboutMeUIStackView = UIStackView(arrangedSubviews: [aboutMeUILabel, aboutMeUITextField],
                                              axis: .vertical, spacing: 0)
        let genderUIStackView = UIStackView(arrangedSubviews: [genderUILabel, genderUISegmentedControll], axis: .vertical, spacing: 10)
        
        goToChatsUIButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let finalUIStackView = UIStackView(arrangedSubviews:
                                        [fullNameUIStackView, aboutMeUIStackView, genderUIStackView, goToChatsUIButton],
                                        axis: .vertical, spacing: 30)
        
        welcomeUILabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameUIStackView.translatesAutoresizingMaskIntoConstraints = false
        finalUIStackView.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeUILabel)
        view.addSubview(fullImageView)
        view.addSubview(finalUIStackView)
        
        NSLayoutConstraint.activate([
            welcomeUILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            welcomeUILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fullImageView.topAnchor.constraint(equalTo: welcomeUILabel.bottomAnchor, constant: 100),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            finalUIStackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 70),
            finalUIStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            finalUIStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            finalUIStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

// MARK: - SwiftUI: Canvas
struct SetupProfileControllerProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = SetupProfileViewController()
        
        func makeUIViewController(context: Context) -> SetupProfileViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
