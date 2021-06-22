//
//  UserLoginSucessfulView.swift
//  StyleWork
//
//  Created by Kapil Dev on 08/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

protocol VerifyNumberDelegate {
    func verifyButtonPressed()
}

class UserLoginSuccessfulView: UIView {
    
    
    var delegate: VerifyNumberDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addLogoImage()
        addUpperDescription()
        addLowerDescription()
        addContactLabel()
        addCountryCodeRectangle()
        addInputRectangle()
        addLine()
        addUpperTitleDecription()
        addIAgree()
        addCheckBox()
        addCountryCodeLabel()
        addTriangle()
        addCheckmark()
        addNumberLabel()
        addVerifyButton()
    }
    
    func addVerifyButton() {
        
        let verifybtn = ElmButton()
        verifybtn.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 48)
        verifybtn.setTitle("Verify your number", for: .normal)
        
        self.addSubview(verifybtn)
        verifybtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([verifybtn.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 526),
                                     verifybtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     verifybtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     verifybtn.heightAnchor.constraint(equalToConstant: 48)])
        
        verifybtn.addTarget(self, action: #selector(gotoVerifyVC), for: .touchUpInside)
    }
    
    @objc func gotoVerifyVC() {
        delegate.verifyButtonPressed()
    }
    
    func addLogoImage() {
        
        let view = UIImageView()
        
        view.frame = CGRect(x: 0, y: 0, width: 62, height: 18)
        view.backgroundColor = .clear
        view.image = UIImage(named: "PayU money")
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 58),
                                     view.widthAnchor.constraint(equalToConstant: 62),
                                     view.heightAnchor.constraint(equalToConstant: 18)])
    }
    
    func addUpperTitleDecription() {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 104, height: 52)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.929, green: 0.937, blue: 0.953, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 18)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.text = "You are now onboard on the flexible workspace journey."
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 104),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 78),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26),
                                     view.heightAnchor.constraint(equalToConstant: 52)])
    }
    
    func addLowerDescription() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        view.attributedText = NSMutableAttributedString(string: "We promise not to spam you with offers and promotions!", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 326),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 12)])

    }
    
    func addUpperDescription() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 54)
        view.backgroundColor = .clear
        view.text = "We just need your phone number to send regular reminders and updates."
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 18)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 268),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 54)])
    }
    
    func addContactLabel() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73


        view.attributedText = NSMutableAttributedString(string: "Your Contact Number", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 370),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addCountryCodeRectangle() {
        // Rectangle 21
        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: 57, height: 48)
        view.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.196, green: 0.216, blue: 0.231, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 394),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 57),
                                     view.heightAnchor.constraint(equalToConstant: 48)])

    }
    
    func addInputRectangle() {
        // Rectangle 22

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 122, height: 48)
        view.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.2, green: 0.216, blue: 0.235, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 394),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 98),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 48)])

    }
    
    func addLine() {
        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 0)
        view.backgroundColor = .clear

        let stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = view.center
        view.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1).cgColor

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 212),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 0)])
    }
    
    func addIAgree() {
        // I agree to the Terms & Conditions and our Privacy Policy

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 90, height: 10)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        view.font = UIFont(name: "Manrope-Regular", size: 10)
        view.text = "I agree to the "
        
        let tAndc = UIButton()
        tAndc.frame = CGRect(x: 0, y: 0, width: 90, height: 10)
        tAndc.backgroundColor = .clear
        
        tAndc.setTitle("Terms & Conditions", for: .normal)
        tAndc.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        tAndc.titleLabel?.font = UIFont(name: "Manrope-Regular", size: 10)
        
        self.addSubview(tAndc)
        tAndc.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([tAndc.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 459),
                                     tAndc.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 108),
                                     tAndc.widthAnchor.constraint(equalToConstant: 90),
                                     tAndc.heightAnchor.constraint(equalToConstant: 10)])
        
        let middleLabel = UILabel()
        middleLabel.frame = CGRect(x: 0, y: 0, width: 40, height: 10)
        middleLabel.backgroundColor = .clear

        middleLabel.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        middleLabel.font = UIFont(name: "Manrope-Regular", size: 10)
        middleLabel.text = "and our"
        
        self.addSubview(middleLabel)
        middleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([middleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 459),
                                     middleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 200),
                                     middleLabel.widthAnchor.constraint(equalToConstant: 40),
                                     middleLabel.heightAnchor.constraint(equalToConstant: 10)])
        
        let privacyPolicy = UIButton()
        privacyPolicy.frame = CGRect(x: 0, y: 0, width: 80, height: 10)
        privacyPolicy.backgroundColor = .clear
        
        privacyPolicy.setTitle("Privacy Policy", for: .normal)
        privacyPolicy.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        privacyPolicy.titleLabel?.font = UIFont(name: "Manrope-Regular", size: 10)
        
        self.addSubview(privacyPolicy)
        privacyPolicy.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([privacyPolicy.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 459),
                                     privacyPolicy.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 231),
                                     privacyPolicy.widthAnchor.constraint(equalToConstant: 80),
                                     privacyPolicy.heightAnchor.constraint(equalToConstant: 10)])
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 459),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 44),
                                     view.widthAnchor.constraint(equalToConstant: 90),
                                     view.heightAnchor.constraint(equalToConstant: 10)])
    }
    
    func addCheckBox() {
        // Rectangle 160
        
        let view = UIButton()
        view.frame = CGRect(x: 0, y: 0, width: 12, height: 12)
        view.backgroundColor = .clear
        view.layer.cornerRadius = 2
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
        
//        view.setImage(UIImage(named: "uncheckebox"), for: .selected)
        view.setImage(UIImage(named: "checkbox"), for: .normal)

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 458),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.heightAnchor.constraint(equalToConstant: 12),
                                     view.widthAnchor.constraint(equalToConstant: 12)])
    }
    
    func addCountryCodeLabel() {
        // 91
        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: 13, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.929, green: 0.937, blue: 0.953, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        view.attributedText = NSMutableAttributedString(string: "91", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 413),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 36),
                                     view.heightAnchor.constraint(equalToConstant: 12),
                                     view.widthAnchor.constraint(equalToConstant: 13)])
    }
    
    func addTriangle() {
        
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 8, height: 5)
        view.backgroundColor = .clear
        view.image = UIImage(named: "upside triangle")
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 416),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 64),
                                     view.heightAnchor.constraint(equalToConstant: 5),
                                     view.widthAnchor.constraint(equalToConstant: 8)])
    }
    
    func addCheckmark() {
        // Icons/Enclosed/Tick
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        view.backgroundColor = .clear
        view.image = UIImage(named: "checkmark")
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 44).isActive = true
        view.heightAnchor.constraint(equalToConstant: 44).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 108).isActive = true

    }
    
    func addNumberLabel() {
        // 9999999999

        let view = UITextField()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 160, height: 12)
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = false
        view.textColor = UIColor(red: 0.929, green: 0.937, blue: 0.953, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        view.attributedPlaceholder = NSAttributedString(string: "Enter your number here", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.424, green: 0.467, blue: 0.55, alpha: 1)])
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: self.frame.width - 160).isActive = true
        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 117).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 412).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
