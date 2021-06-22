//
//  BaseTextField.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class BaseTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = frame
        self.backgroundColor = .clear


        let shadowPath0 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = self.bounds
        layer0.position = self.center
        self.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = self.bounds
        layer1.position = self.center
        self.layer.addSublayer(layer1)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer2.bounds = self.bounds
        layer2.position = self.center
        self.layer.addSublayer(layer2)

        layer2.cornerRadius = 4

    }
    
    func addInputRectangle() {
        // Rectangle 22
        let view = UITextField()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 48)
        view.backgroundColor = .clear

//        let shadows = UIView()
//        shadows.frame = view.frame
//        shadows.clipsToBounds = false
//        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: view.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = view.bounds
        layer0.position = view.center
        view.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: view.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = view.bounds
        layer1.position = view.center
        view.layer.addSublayer(layer1)

//        let shapes = UIView()
//        shapes.frame = view.frame
//        shapes.clipsToBounds = true
//        view.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer2.bounds = view.bounds
        layer2.position = view.center
        view.layer.addSublayer(layer2)

        layer2.cornerRadius = 4
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
