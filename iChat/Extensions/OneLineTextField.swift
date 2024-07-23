//
//  OneLineTextField.swift
//  iChat
//
//  Created by Роман on 23.07.2024.
//

import UIKit

class OneLineTextField: UITextField {
    convenience init(font: UIFont? = .avenir20()) {
        self.init()
        
        self.font = font
        self.borderStyle = .none
        self.translatesAutoresizingMaskIntoConstraints = false
        
        var bottomUIView = UIView()
        bottomUIView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        bottomUIView.backgroundColor = .textFieldLight()
        bottomUIView.translatesAutoresizingMaskIntoConstraints = false 
        
        self.addSubview(bottomUIView)
        
        NSLayoutConstraint.activate([
            bottomUIView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomUIView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomUIView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomUIView.heightAnchor.constraint(equalToConstant: 1)
            ])
    }
}
