//
//  VerticalProgressView.swift
//  StyleWork
//
//  Created by Kapil Dev on 05/05/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class VerticalProgressView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addBaseView()
        
    }
    
    func addBaseView() {
        // base

        let baseView = UIView()
        baseView.frame = CGRect(x: 0, y: 0, width: 8, height: 145)
        baseView.backgroundColor = .clear

        baseView.layer.backgroundColor = UIColor(red: 0.153, green: 0.161, blue: 0.176, alpha: 1).cgColor

        self.addSubview(baseView)
        baseView.translatesAutoresizingMaskIntoConstraints = false
        baseView.frame = self.bounds
    }
    
    
    func addFilledView(factor: Int) {
        
        let height = self.bounds.height * CGFloat(Double(factor)*0.1667)
        
        let filledView = UIView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: height))
        filledView.backgroundColor = .clear
        
        let shadows = UIView()
        shadows.frame = filledView.frame
        shadows.clipsToBounds = false
        filledView.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.5).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 6
        layer0.shadowOffset = CGSize(width: 1, height: 1)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.761, green: 0.785, blue: 0.824, alpha: 0.2).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 6
        layer1.shadowOffset = CGSize(width: -1, height: -2)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.1).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 4
        layer2.shadowOffset = CGSize(width: 1, height: 0)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = filledView.frame
        shapes.clipsToBounds = true
        filledView.addSubview(shapes)

        let layer3 = CALayer()
        layer3.backgroundColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)

        self.addSubview(filledView)
        filledView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([filledView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     filledView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     filledView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                     filledView.heightAnchor.constraint(equalToConstant: height)])
        
        
        // Rectangle 369

        let marker = UIView()
        marker.frame = CGRect(x: 0, y: 0, width: 6, height: 2)
        marker.backgroundColor = .clear
        marker.layer.backgroundColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1).cgColor
        
        self.addSubview(marker)
        marker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([marker.widthAnchor.constraint(equalToConstant: 6),
                                     marker.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     marker.bottomAnchor.constraint(equalTo: filledView.topAnchor),
                                     marker.heightAnchor.constraint(equalToConstant: 2)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
