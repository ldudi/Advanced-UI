//
//  LoginVerification.swift
//  StyleWork
//
//  Created by Kapil Dev on 08/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class LoginVerification: UIViewController {
    
    
    let wholeView = LoginVerificationView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        view.addSubview(wholeView)
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
}
