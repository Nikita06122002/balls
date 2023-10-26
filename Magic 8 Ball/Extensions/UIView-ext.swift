//
//  UIView-ext.swift
//  Magic 8 Ball
//
//  Created by macbook on 24.10.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)
            
        }
    }
}
