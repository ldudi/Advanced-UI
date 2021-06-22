//
//  HomeModal.swift
//  StyleWork
//
//  Created by Kapil Dev on 08/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class HomeModal: UIViewController {
    
    
    let homeBase = HomeModalView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        homeBase.center = view.center
        view.addSubview(homeBase)
        
    }
    
}
