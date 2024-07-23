//
//  UILabel + Extension.swift
//  iChat
//
//  Created by Роман on 22.07.2024.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
