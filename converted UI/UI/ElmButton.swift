//
//  ElmButton.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ElmButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = frame
        self.backgroundColor = .clear

        let shadowPath0 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.25).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 4, height: 4)
        layer0.bounds = self.bounds
        layer0.position = self.center
        self.layer.addSublayer(layer0)
        
        let shadowPath1 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.761, green: 0.784, blue: 0.824, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 24
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = self.bounds
        layer1.position = self.center
        self.layer.addSublayer(layer1)
        
        self.layer.backgroundColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
        self.layer.cornerRadius = 4
        
        self.titleLabel?.textColor = UIColor.textLight
        self.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 12)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
