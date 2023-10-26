//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let ballsView = setupBalls()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "purple")!)
        
        setupView()
    }
    
    private func setupView() {
        
        view.addSubviews(ballsView)
        
        NSLayoutConstraint.activate([
            ballsView.topAnchor.constraint(equalTo: view.topAnchor),
            ballsView.bottomAnchor.constraint (equalTo: view.bottomAnchor),
            ballsView.leadingAnchor.constraint (equalTo: view.leadingAnchor),
            ballsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

//MARK: - SwiftUI
import SwiftUI
struct Provider_ViewController : PreviewProvider {
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainterView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return ViewController()
        }
        
        typealias UIViewControllerType = UIViewController
        
        
        let viewController = ViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: Provider_ViewController.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) {
            
        }
    }
    
}
