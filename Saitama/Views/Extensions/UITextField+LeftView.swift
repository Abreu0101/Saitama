//
//  UITextField+LeftView.swift
//  Saitama
//
//  Created by Roberto Abreu on 11/25/17.
//  Copyright © 2017 homeappzz. All rights reserved.
//

import UIKit

extension UITextField {
    
    func addLeftIcon(named: String) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: self.bounds.height))
        imageView.contentMode = .center
        imageView.image = UIImage(named: named)
        self.leftView = imageView
        self.leftViewMode = .always
    }
    
}
