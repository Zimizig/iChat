//
//  AddPhotoView.swift
//  iChat
//
//  Created by Роман on 24.07.2024.
//

import UIKit

class AddPhotoView: UIView {
    
    var circleUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "avatar")
        imageView.contentMode = .center
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
        return imageView
    }()
    
    let plusUIButton: UIButton = {
        let button = UIButton(type: .system)
        let plusImage = #imageLiteral(resourceName: "plus")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(plusImage, for: .normal)
        button.tintColor = .buttonDark()
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(circleUIImageView)
        addSubview(plusUIButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            circleUIImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            circleUIImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            circleUIImageView.widthAnchor.constraint(equalToConstant: 100),
            circleUIImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            plusUIButton.leadingAnchor.constraint(equalTo: circleUIImageView.trailingAnchor, constant: 16),
            plusUIButton.centerYAnchor.constraint(equalTo: circleUIImageView.centerYAnchor),
            plusUIButton.heightAnchor.constraint(equalToConstant: 30),
            plusUIButton.widthAnchor.constraint(equalToConstant: 30)
        ])
        self.bottomAnchor.constraint(equalTo: circleUIImageView.bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: plusUIButton.trailingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        circleUIImageView.layer.masksToBounds = true
        circleUIImageView.layer.cornerRadius = circleUIImageView.frame.width / 2
    }
}
