//
//  ElmButtonRounded.swift
//  StyleWork
//
//  Created by Kapil Dev on 30/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ElmButtonRounded: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        let shadows = UIView()
//        shadows.frame = self.frame
//        shadows.clipsToBounds = false
//        self.addSubview(shadows)
//
//        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
//        let layer0 = CALayer()
//        layer0.shadowPath = shadowPath0.cgPath
//        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.5).cgColor
//        layer0.shadowOpacity = 1
//        layer0.shadowRadius = 20
//        layer0.shadowOffset = CGSize(width: 4, height: 4)
//        layer0.bounds = shadows.bounds
//        layer0.position = shadows.center
//        shadows.layer.addSublayer(layer0)
//
//        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
//        let layer1 = CALayer()
//        layer1.shadowPath = shadowPath1.cgPath
//        layer1.shadowColor = UIColor(red: 0.765, green: 0.788, blue: 0.824, alpha: 0.2).cgColor
//        layer1.shadowOpacity = 1
//        layer1.shadowRadius = 20
//        layer1.shadowOffset = CGSize(width: -4, height: -4)
//        layer1.bounds = shadows.bounds
//        layer1.position = shadows.center
//        shadows.layer.addSublayer(layer1)
//
//        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
//        let layer2 = CALayer()
//        layer2.shadowPath = shadowPath2.cgPath
//        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.4).cgColor
//        layer2.shadowOpacity = 1
//        layer2.shadowRadius = 20
//        layer2.shadowOffset = CGSize(width: 4, height: 4)
//        layer2.bounds = shadows.bounds
//        layer2.position = shadows.center
//        shadows.layer.addSublayer(layer2)
//
//        let shapes = UIView()
//        shapes.frame = self.frame
//        shapes.clipsToBounds = true
//        self.addSubview(shapes)
//
//        let layer3 = CALayer()
//        layer3.backgroundColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
//        layer3.bounds = shapes.bounds
//        layer3.position = shapes.center
//        shapes.layer.addSublayer(layer3)
//
//        shapes.layer.cornerRadius = 28
        
        // CTA/Floating/Schedule-Visit

        self.frame = CGRect(x: 0, y: 0, width: 212, height: 46)
        self.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = self.frame
        shadows.clipsToBounds = false
        self.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.5).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 20
        layer0.shadowOffset = CGSize(width: 4, height: 4)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.765, green: 0.788, blue: 0.824, alpha: 0.2).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 20
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 28)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.4).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 20
        layer2.shadowOffset = CGSize(width: 4, height: 4)
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = self.frame
        shapes.clipsToBounds = true
        self.addSubview(shapes)

        let layer3 = CALayer()
        layer3.backgroundColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)

        shapes.layer.cornerRadius = 23

        
        self.titleLabel?.textColor = UIColor.textLight
        self.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
