//
//  VisitsScheduledVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 24/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class VisitsScheduledVC: UIViewController {
    
    let scrollView = UIScrollView()
    let width = UIScreen.main.bounds.width - 48
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addScrollView()
        addSummaryWidget()
        addVisitsLabel()
        addHorizontalScrollView()
        addMembershipCard()
    }
    
    
    func addHorizontalScrollView() {
        
        
        let segmentItems = ["Scheduled", "Requested", "Conducted", "Declined"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 0, y: 0, width: width, height: 36)
//        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        
        control.selectedSegmentTintColor = UIColor.primaryGreen
        control.backgroundColor = UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1)
        let font: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font : UIFont(name: "Manrope-Medium", size: 14)!,
                                                    NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        control.setTitleTextAttributes(font, for: .normal)
        
        control.selectedSegmentIndex = 0
        scrollView.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([control.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 458),
                                     control.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                                     control.heightAnchor.constraint(equalToConstant: 36),
                                     control.widthAnchor.constraint(equalToConstant: width)])
    }
    
    func addMembershipCard() {
        let card = MembershipPlansCard()
        card.frame = CGRect(x: 0, y: 0, width: width, height: 327)
        scrollView.addSubview(card)
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([card.widthAnchor.constraint(equalToConstant: width),
                                     card.heightAnchor.constraint(equalToConstant: 327),
                                     card.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                                     card.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 516)])
    }
    
    func addVisitsLabel() {
        // Your Visits

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 88, height: 18)
        label.backgroundColor = .clear

        label.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Manrope-Medium", size: 18)
        label.text = "Your Visits"

        scrollView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 88).isActive = true
        label.heightAnchor.constraint(equalToConstant: 18).isActive = true
        label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 424).isActive = true

    }
    
    func addScrollView() {
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: 910)
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
    }
    
    func addSummaryWidget() {
        let widget = SummaryWidget(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 352))
        scrollView.addSubview(widget)
        widget.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([widget.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
                                     widget.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                                     widget.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 48),
                                     widget.heightAnchor.constraint(equalToConstant: 352)])
    }
    
    
}
