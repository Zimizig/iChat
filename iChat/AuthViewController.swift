//
//  ViewController.swift
//  iChat
//
//  Created by Роман on 18.07.2024.
//

import UIKit
import SwiftUI

class AuthViewController: UIViewController {
   
    let myButton = UIButton(title: "Email", titleColor: .black, backgroundColor: .white, font: .avenir20(), isShadow: true, cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

struct viewControllerProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<viewControllerProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
