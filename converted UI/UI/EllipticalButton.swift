//
//  EllipticalButton.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class EllipticalButton: UIButton {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        // Ellipse 43
        
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
        layer0.shadowRadius = 0.3 * self.frame.width
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.cornerRadius = self.frame.width / 2
        
        
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)
        
        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.761, green: 0.784, blue: 0.824, alpha: 0.3).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 0.3 * self.frame.width
        layer1.shadowOffset = CGSize(width: -2, height: -2)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        layer1.cornerRadius = self.frame.width / 2
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.5).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 0.15 * self.frame.width
        layer2.cornerRadius = self.frame.width / 2
        layer2.shadowOffset = CGSize(width: 1, height: 1)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = self.frame
        shapes.clipsToBounds = true
        self.addSubview(shapes)

        let layer3 = CALayer()
        layer3.backgroundColor = UIColor.textDarkGreyLowOpacity.cgColor
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        layer3.cornerRadius = self.frame.width / 2
        shapes.layer.addSublayer(layer3)
        
        bringSubviewToFront(imageView!)
        
    }
    
    func addImage(image: UIImage) {
        self.setImage(image, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
