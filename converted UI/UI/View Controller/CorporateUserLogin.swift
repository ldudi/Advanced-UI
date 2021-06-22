//
//  CorporateUserLogin.swift
//  StyleWork
//
//  Created by Kapil Dev on 06/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CorporateUserLogin: UIViewController, ButtonDelegate {
    
    
    let wholeView = UserLoginView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wholeView.delegate = self
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        view.addSubview(wholeView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
    }
    
//    private func getCorprateIdfromServer() {
//        VerifyCorporate.verifyCorporate(corpID: "corporate_login", onCompleteCallBack: {
//            resource in
//
//            if(resource.isSuccessfull) {
//                print("irrational numbers")
//            }
//            else {
//                print("prime numbers")
//            }
//        })
//    }
    
    func didPressButton() {
        
//        getCorprateIdfromServer()
        
        let vc = CorporateUserLoginSucessful()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
