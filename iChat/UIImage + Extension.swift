//
//  UIImage + Extension.swift
//  iChat
//
//  Created by Роман on 22.07.2024.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
        
    }
}
