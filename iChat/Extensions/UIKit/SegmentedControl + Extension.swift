//
//  SegmentedControl + Extension.swift
//  iChat
//
//  Created by Роман on 25.07.2024.
//

import UIKit

extension UISegmentedControl {
    convenience init(first: String, second: String, selectedSegmentTintColor: UIColor) {
        self.init()
        self.insertSegment(withTitle: "first", at: 0, animated: true)
        self.insertSegment(withTitle: "second", at: 1, animated: true)
        self.selectedSegmentIndex = 0
        self.selectedSegmentTintColor = selectedSegmentTintColor
    }
}
