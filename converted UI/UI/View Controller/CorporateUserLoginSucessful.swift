//
//  CorporateUserLoginSucessful.swift
//  StyleWork
//
//  Created by Kapil Dev on 06/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CorporateUserLoginSucessful: UIViewController, VerifyNumberDelegate {
    
    
    let wholeView = UserLoginSuccessfulView(frame: UIScreen.main.bounds)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wholeView.delegate = self
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        view.addSubview(wholeView)
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
    
    func verifyButtonPressed() {
        let vc = LoginVerification()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
