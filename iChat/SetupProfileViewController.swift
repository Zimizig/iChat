//
//  SetupProfileViewController.swift
//  iChat
//
//  Created by Роман on 24.07.2024.
//

import UIKit
import SwiftUI

class SetupProfileViewController: UIViewController {
    
    let fillImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension SetupProfileViewController {
    private func setupConstraints() {
        
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fillImageView)
        
        NSLayoutConstraint.activate([
            fillImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
