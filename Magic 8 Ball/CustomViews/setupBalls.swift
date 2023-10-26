//
//  setupBalls.swift
//  Magic 8 Ball
//
//  Created by macbook on 24.10.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

final class setupBalls: UIView {
    
    init() {
        super.init(frame: .infinite)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    private let imageView = UIImageView()
    private let askButton = UIButton()
    private let label = UILabel()
    
    
    private func setupView() {
        self.addSubviews(imageView, askButton, label)
        imageView.image = UIImage(named: "ball1")
        askButton.setTitle("Ask", for: .normal)
        askButton.backgroundColor = .gray
        askButton.layer.cornerRadius = 20
        askButton.addTarget(self, action: #selector(askButtonPressed), for: .touchUpInside)
        label.text = "Ask me anything..."
        label.font = .systemFont(ofSize: 30)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 200),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 310),
            imageView.heightAnchor.constraint(equalToConstant: 270),
            
            askButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 150),
            askButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            askButton.widthAnchor.constraint(equalToConstant: 100),
            askButton.heightAnchor.constraint(equalToConstant: 50),
            
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    @objc private func askButtonPressed() {
        imageView.image = UIImage(named: array.randomElement()!)
    }
}
