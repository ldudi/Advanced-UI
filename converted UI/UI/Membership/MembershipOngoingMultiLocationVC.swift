//
//  MembershipOngoingMultiLocationVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 28/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class MembershipOngoingMultiLocationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        
        
        addTopLabel()
        addControl()
    }
    

    func addTopLabel() {
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 173, height: 25))
        title.backgroundColor = .clear
        title.textColor = UIColor.textLight
        title.font = UIFont(name: "manrope-medium", size: 20)
        title.text = "Your Memberships"
        title.baselineAdjustment = .alignCenters
        
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([title.widthAnchor.constraint(equalToConstant: 173),
                                     title.heightAnchor.constraint(equalToConstant: 25),
                                     title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
                                     title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)])
    }
    
    
    func addControl() {
        let segmentItems = ["Ongoing", "Upcoming"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 0, y: 0, width: 198, height: 34)
        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        
        control.selectedSegmentTintColor = UIColor.primaryGreen
        control.backgroundColor = UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1)
        let font: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font : UIFont(name: "Manrope-Medium", size: 14)!,
                                                    NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        control.setTitleTextAttributes(font, for: .normal)
        
        control.selectedSegmentIndex = 0
        view.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([control.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 84),
                                     control.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                                     control.heightAnchor.constraint(equalToConstant: 34),
                                     control.widthAnchor.constraint(equalToConstant: 198)])
    }
    
    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
            case 0:
                
                break
            case 1:
                
                break
            default:
                break
       }
    }
    

}
