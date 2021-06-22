//
//  BaseGradLayer.swift
//  StyleWork
//
//  Created by Kapil Dev on 12/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class BaseGradLayer: CAGradientLayer {

    override init(layer: Any) {
        super.init(layer: layer)
        self.colors = [
          UIColor(red: 0.208, green: 0.229, blue: 0.246, alpha: 1).cgColor,
          UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1).cgColor
        ]
        self.locations = [0, 1]
        self.startPoint = CGPoint(x: 0.25, y: 0.5)
        self.endPoint = CGPoint(x: 0.75, y: 0.5)
        self.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: 1, c: -1, d: 0, tx: 1, ty: 0))
        self.bounds = self.bounds.insetBy(dx: -0.5*self.bounds.size.width, dy: -0.5*self.bounds.size.height)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
