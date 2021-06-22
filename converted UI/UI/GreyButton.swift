//
//  GreyButton.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class GreyButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = frame
        self.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = self.frame
        shadows.clipsToBounds = false
        self.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.5).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 4, height: 4)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.761, green: 0.784, blue: 0.824, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 24
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.2).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 12
        layer2.shadowOffset = CGSize(width: 2, height: 2)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)
        
        self.layer.borderWidth = 1
//        self.layer.borderColor = UIColor(red: 83/255, green: 86/255, blue: 91/255, alpha: 1).cgColor
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        self.layer.cornerRadius = 4

        self.titleLabel?.textColor = UIColor.textLight
        self.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
