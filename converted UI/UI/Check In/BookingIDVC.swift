//
//  BookingIDVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 24/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class BookingIDVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        
        addCross()
        addTitleLabel()
        addCopyCode()
        addShareCode()
        
        addDigitsTF()
        addBottomLabel()
        addBottomButton()
    }
    
    func addBottomButton() {
        
        // Generate your QR Code

        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 158, height: 14)
        button.backgroundColor = .clear
        
        button.setTitle("Generate your QR Code", for: .normal)
        button.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)

        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 158).isActive = true
        button.heightAnchor.constraint(equalToConstant: 14).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
    }
    
    func addBottomLabel() {
        // Try a faster check-in with

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 140, height: 12)
        label.backgroundColor = .clear

        label.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        label.font = UIFont(name: "Manrope-Regular", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 12 pt
        // (identical to box height)

        label.attributedText = NSMutableAttributedString(string: "Try a faster check-in with", attributes: [NSAttributedString.Key.kern: 0.06, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 140).isActive = true
        label.heightAnchor.constraint(equalToConstant: 12).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -72).isActive = true

    }
    
    func addDigitsTF() {
        
        let width = UIScreen.main.bounds.width - 74
        
        let otpView = DigitsTF(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 74, height: 52))
        
        self.view.addSubview(otpView)
        otpView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([otpView.topAnchor.constraint(equalTo: view.topAnchor, constant: 247),
                                     otpView.widthAnchor.constraint(equalToConstant: width),
                                     otpView.heightAnchor.constraint(equalToConstant: 52),
                                     otpView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    func addShareCode() {
        let sharebtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        sharebtn.setImage(UIImage(named: "share 2"), for: .normal)
        view.addSubview(sharebtn)
        sharebtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([sharebtn.heightAnchor.constraint(equalToConstant: 40),
                                     sharebtn.widthAnchor.constraint(equalToConstant: 40),
                                     sharebtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 331),
                                     sharebtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 40)])
    }
    
    func addCopyCode() {
        let copybtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        copybtn.setImage(UIImage(named: "copy 1"), for: .normal)
        view.addSubview(copybtn)
        copybtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([copybtn.heightAnchor.constraint(equalToConstant: 40),
                                     copybtn.widthAnchor.constraint(equalToConstant: 40),
                                     copybtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 331),
                                     copybtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40)])
    }
    
    func addTitleLabel() {
        // Booking ID

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 102, height: 20)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-SemiBold", size: 20)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 20 pt
        // (identical to box height)

        title.attributedText = NSMutableAttributedString(string: "Booking ID", attributes: [NSAttributedString.Key.kern: 0.1, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 102).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 31).isActive = true
        title.topAnchor.constraint(equalTo: view.topAnchor, constant: 138).isActive = true
        
        
        // Show this ID to the booking operator for a seamless check-in

        let subTitle = UILabel()
        subTitle.frame = CGRect(x: 0, y: 0, width: 321, height: 40)
        subTitle.backgroundColor = .clear

        subTitle.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        subTitle.font = UIFont(name: "Manrope-Regular", size: 14)
        subTitle.numberOfLines = 0
        subTitle.lineBreakMode = .byWordWrapping
        subTitle.text = "Show this ID to the booking operator for a seamless check-in"

        
        view.addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.widthAnchor.constraint(equalToConstant: 321).isActive = true
        subTitle.heightAnchor.constraint(equalToConstant: 40).isActive = true
        subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        subTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 167).isActive = true



    }
    
    func addCross() {
        let crossbtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        crossbtn.setImage(UIImage(named: "Cancel"), for: .normal)
        view.addSubview(crossbtn)
        crossbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([crossbtn.heightAnchor.constraint(equalToConstant: 32),
                                     crossbtn.widthAnchor.constraint(equalToConstant: 32),
                                     crossbtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
                                     crossbtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)])
    }

}
