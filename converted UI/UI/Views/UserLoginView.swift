//
//  UserLoginView.swift
//  StyleWork
//
//  Created by Kapil Dev on 08/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

protocol ButtonDelegate {
    func didPressButton()
}

class UserLoginView: UIView {
    
    var delegate: ButtonDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addTopLabel()
        addVisitButton()
        addTitleText()
        addIdLabel()
        addInputRectangle()
        idTextField()
        addNextButton()
    }
    
    func addTopLabel() {
        // Looking for personal use?
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 145, height: 12)
        view.backgroundColor = .clear
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        view.attributedText = NSMutableAttributedString(string: "Looking for personal use?", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 145),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addVisitButton() {
        // Visit here
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 55, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        view.attributedText = NSMutableAttributedString(string: "Visit here", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 173),
                                     view.widthAnchor.constraint(equalToConstant: 55),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addTitleText() {
        
        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 52)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 18)
        view.lineBreakMode = .byWordWrapping
        view.numberOfLines = 0
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.06
        view.text = "Get started with flexible workspaces for your company"

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 136),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 52)])
    }
    
    func addIdLabel() {
        // Your Corporate Id

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 98, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        
        view.attributedText = NSMutableAttributedString(string: "Your Corporate Id", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 220),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 98),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func idTextField() {
        
        let view = UITextField()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 88, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.929, green: 0.937, blue: 0.953, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        view.isUserInteractionEnabled = false
        view.attributedPlaceholder = NSAttributedString(string: "Enter your Corporate Login Id", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.424, green: 0.467, blue: 0.55, alpha: 1)])
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 262),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 44),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -44),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addInputRectangle() {
        // Rectangle 22
        let view = UITextField()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 48)
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = false
        let shadowPath0 = UIBezierPath(roundedRect: view.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = view.bounds
        layer0.position = view.center
        view.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: view.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = view.bounds
        layer1.position = view.center
        view.layer.addSublayer(layer1)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer2.bounds = view.bounds
        layer2.position = view.center
        view.layer.addSublayer(layer2)

        layer2.cornerRadius = 4

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 244),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 48)])
    }
    
    func addNextButton() {
        // Primary/CTA/Full-width/Without-icon
        let button = ElmButton()
        
        button.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 48)
        button.setTitle("Next", for: .normal)
        
        self.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 336),
                                     button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     button.heightAnchor.constraint(equalToConstant: 48)])
        
        button.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
        
    }
    
    @objc func nextButtonPressed() {
        delegate.didPressButton()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
