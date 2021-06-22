//
//  DropDownButton.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class DropDownButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = frame
        self.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = self.frame
        shadows.clipsToBounds = false
        self.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = self.frame
        shapes.clipsToBounds = true
        self.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.196, green: 0.216, blue: 0.231, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4
        
        self.setImage(UIImage(named: "Drop Down"), for: .normal)
        self.semanticContentAttribute = .forceRightToLeft
        
        self.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 10)
        self.setTitleColor(UIColor.textLight, for: .normal)
        self.bringSubviewToFront(self.imageView!)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 4
        self.layer.borderColor = UIColor.textDarkGrey.cgColor
        
        let spacing: CGFloat = 10; // the amount of spacing to appear between image and title
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}
