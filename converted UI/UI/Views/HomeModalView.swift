//
//  HomeModalView.swift
//  StyleWork
//
//  Created by Kapil Dev on 09/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

protocol ClickedDelegate {
    func didClick()
}

class HomeModalView: UIView {
    
    var delegate: ClickedDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addBaseCard()
    }
    
    
    func addBaseCard() {
        
//        let view = UILabel()
        self.frame = CGRect(x: 0, y: 0, width: 312, height: 379)
        self.backgroundColor = .clear
        
        let shadows = UIView()
        shadows.frame = self.frame
        shadows.clipsToBounds = false
        self.addSubview(shadows)
        
        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 8)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 40
        layer0.shadowOffset = CGSize(width: 6, height: 6)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)
        
        let shapes = UIView()
        shapes.frame = self.frame
        shapes.clipsToBounds = true
        self.addSubview(shapes)

        let layer1 = CALayer()
        layer1.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer1.bounds = shapes.bounds
        layer1.position = shapes.center
        shapes.layer.addSublayer(layer1)

        shapes.layer.cornerRadius = 8
        shapes.layer.borderWidth = 1
        shapes.layer.borderColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1).cgColor

        let imageLogo = UIImageView()
        imageLogo.frame = CGRect(x: 0, y: 0, width: 62, height: 18)
        imageLogo.backgroundColor = .clear
        imageLogo.image = UIImage(named: "PayU money")

        self.addSubview(imageLogo)
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        imageLogo.widthAnchor.constraint(equalToConstant: 62).isActive = true
        imageLogo.heightAnchor.constraint(equalToConstant: 18).isActive = true
        imageLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        imageLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 32).isActive = true
        
        
        
        
        // Welcome onboard, Anshul!
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        
        let attrOne = [NSAttributedString.Key.font : UIFont(name: "Manrope-ExtraLight", size: 14), NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1), NSAttributedString.Key.paragraphStyle : paragraphStyle]
        let attrTwo = [NSAttributedString.Key.font : UIFont(name: "manrope-Regular", size: 15), NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1), NSAttributedString.Key.paragraphStyle : paragraphStyle]

        let welcomeLabel = UILabel()
        welcomeLabel.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        welcomeLabel.backgroundColor = .clear
        welcomeLabel.baselineAdjustment = .alignBaselines
        
        let stringOne = NSAttributedString(string: "Welcome onboard, ", attributes: attrOne)
        let stringTwo = NSAttributedString(string: "Anshul!", attributes: attrTwo)
        
        let mainString = NSMutableAttributedString()
        mainString.append(stringOne)
        mainString.append(stringTwo)
        
        welcomeLabel.attributedText = mainString
        
        self.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
        welcomeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        welcomeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 74).isActive = true
        
        
        // Your team at PayU has allocated a flexible membership plan for you.

        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 0, y: 0, width: 280, height: 100)
        titleLabel.backgroundColor = .clear
        titleLabel.baselineAdjustment = .alignBaselines
        titleLabel.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        titleLabel.font = UIFont(name: "Manrope-Regular", size: 14)
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.sizeToFit()
        
        
        
        let titleOne = NSAttributedString(string: "Your team at ", attributes: attrOne)
        let titleTwo = NSAttributedString(string: "PayU", attributes: attrTwo)
        let titleThree = NSAttributedString(string: " has allocated a ", attributes: attrOne)
        let titleFour = NSAttributedString(string: "flexible membership plan", attributes: attrTwo)
        let titleFive = NSAttributedString(string: " for you.", attributes: attrOne)
        
        let titleText = NSMutableAttributedString()
        titleText.append(titleOne)
        titleText.append(titleTwo)
        titleText.append(titleThree)
        titleText.append(titleFour)
        titleText.append(titleFive)

        titleLabel.attributedText = titleText
        
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 108).isActive = true
        
        
        
        let helpLabel = UILabel()
        helpLabel.frame = CGRect(x: 0, y: 0, width: 280, height: 63)
        helpLabel.backgroundColor = .clear
        helpLabel.text = "In order to help you understand the functionalities, we have prepared a short tour for you!"
        helpLabel.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        helpLabel.font = UIFont(name: "Manrope-SemiBold", size: 14)
        helpLabel.numberOfLines = 0
        helpLabel.lineBreakMode = .byWordWrapping
        self.addSubview(helpLabel)
        helpLabel.translatesAutoresizingMaskIntoConstraints = false
        helpLabel.heightAnchor.constraint(equalToConstant: 63).isActive = true
        helpLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        helpLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        helpLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 214).isActive = true
        
        
        // Skip button

        let skipButton = UIButton()
        skipButton.frame = CGRect(x: 0, y: 0, width: 144, height: 46)
        skipButton.backgroundColor = .clear
        skipButton.setTitle("Skip for now", for: .normal)
        skipButton.setTitleColor(UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1), for: .normal)
        skipButton.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)
        skipButton.layer.cornerRadius = 4

        self.addSubview(skipButton)
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        skipButton.widthAnchor.constraint(equalToConstant: 144).isActive = true
        skipButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        skipButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22).isActive = true
        skipButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 301).isActive = true
        
        skipButton.addTarget(self, action: #selector(addNavigationView), for: .touchUpInside)
        
        // Show me button

        let showMeButton = ElmButton()
        showMeButton.frame = CGRect(x: 0, y: 0, width: 124, height: 46)
        showMeButton.setTitle("Show me", for: .normal)
        showMeButton.addTarget(self, action: #selector(addNavigationView), for: .touchUpInside)
        self.addSubview(showMeButton)
        showMeButton.translatesAutoresizingMaskIntoConstraints = false
        showMeButton.widthAnchor.constraint(equalToConstant: 124).isActive = true
        showMeButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        showMeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 166).isActive = true
        showMeButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 301).isActive = true
        
    }
    
    @objc func skipClicked() {
        delegate.didClick()
    }
    
    @objc func addNavigationView() {
        
        print("perhaps")
        let nav1 = UINavigationController()
        let vc: UIViewController = NavigationViewController()
        nav1.viewControllers = [vc]
        window!.rootViewController = nav1
        nav1.isNavigationBarHidden = true
//        window!.makeKeyAndVisible()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
