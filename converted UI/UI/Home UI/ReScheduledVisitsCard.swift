//
//  ReScheduledVisitsCard.swift
//  StyleWork
//
//  Created by Kapil Dev on 21/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ReScheduledVisitsCard: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addCheckInButton()
        addGetDirections()
        addCancelButton()
        addScheduled()
        addTitle()
        addSubtitle()
        addMiniTitle()
        addColorCoding()
        addShadows()
        addBorder()
    }
    
    func addBorder() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        view.backgroundColor = .clear
        
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: self.frame.size)
        gradient.colors = [UIColor(red: 131/255, green: 124/255, blue: 210/255, alpha: 1).cgColor,
                           UIColor(red: 54/255, green: 58/255, blue: 64/255, alpha: 0).cgColor]
        gradient.locations = [0,1]
        gradient.startPoint = CGPoint(x: 1, y: 1)
        gradient.endPoint = CGPoint(x: 0, y: 0)
        let shape = CAShapeLayer()
        shape.lineWidth = 2
        shape.path = UIBezierPath(rect: self.bounds).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        self.layer.addSublayer(gradient)
        
        view.layer.addSublayer(gradient)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                                     view.topAnchor.constraint(equalTo: self.topAnchor)])
        
    }
    
    
    
    
    func addShadows() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        view.backgroundColor = .clear
        
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(origin: CGPoint.zero, size: self.frame.size)
        gradient.colors = [UIColor(red: 83, green: 86, blue: 91, alpha: 1), UIColor(red: 39, green: 41, blue: 45, alpha: 0)]
        gradient.borderWidth = 1
        let shape = CAShapeLayer()
        shape.lineWidth = 1
        shape.path = UIBezierPath(rect: gradient.bounds).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        
        view.layer.addSublayer(gradient)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: self.bounds.width),
                                     view.heightAnchor.constraint(equalToConstant: self.bounds.height),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     view.topAnchor.constraint(equalTo: self.topAnchor)])
        
}
    
    func addColorCoding() {
        
        // indicator/color-coding

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 4, height: 142)
        view.backgroundColor = .clear

        view.layer.backgroundColor = UIColor(red: 0.98, green: 0.706, blue: 0.275, alpha: 1).cgColor

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 4),
                                     view.heightAnchor.constraint(equalToConstant: 142),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     view.topAnchor.constraint(equalTo: self.topAnchor)])

    }
    
    func addMiniTitle() {

        let locationLabel = LocationLabel(frame: CGRect(x: 0, y: 0, width: 168, height: 42))
        locationLabel.locationString.text = "8th floor, Magnum Tower 1, Golf Course Extension Road, Sector 58, Gurugram"
        self.addSubview(locationLabel)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([locationLabel.widthAnchor.constraint(equalToConstant: 168),
                                     locationLabel.heightAnchor.constraint(equalToConstant: 42),
                                     locationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     locationLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 86)])

    }
    
    func addSubtitle() {
        // Co-offiz Golf Course Road

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 146, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        view.attributedText = NSMutableAttributedString(string: "Co-offiz Golf Course Road", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 146),
                                     view.heightAnchor.constraint(equalToConstant: 12),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 68)])

    }
    
    func addTitle() {
        // PayU Pune - Sales

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 134, height: 16)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        view.attributedText = NSMutableAttributedString(string: "PayU Pune - Sales", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 134),
                                     view.heightAnchor.constraint(equalToConstant: 16),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 28)])
    }
    
    func addScheduled() {
        // SCHEDULED
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 58, height: 10)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 10)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 10 pt
        // (identical to box height)

        view.attributedText = NSMutableAttributedString(string: "SCHEDULED", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 58),
                                     view.heightAnchor.constraint(equalToConstant: 10),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 12)])

    }
    
    func addCancelButton() {
        // Cancel visit

        let cButton = UIButton()
        cButton.frame = CGRect(x: 0, y: 0, width: 70, height: 10)
        cButton.backgroundColor = .clear
        
        cButton.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 10)
        cButton.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        cButton.setTitle("Cancel visit?", for: .normal)
        
        self.addSubview(cButton)
        cButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([cButton.widthAnchor.constraint(equalToConstant: 70),
                                     cButton.heightAnchor.constraint(equalToConstant: 10),
                                     cButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
                                     cButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12)])
    }
    
    func addGetDirections() {
        
        // CTA/Primary/Small

        let getDirectionbtn = GreyButton()
        getDirectionbtn.frame = CGRect(x: 0, y: 0, width: 106, height: 28)
        getDirectionbtn.setTitle("Get Directions", for: .normal)
        
        self.addSubview(getDirectionbtn)
        getDirectionbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([getDirectionbtn.widthAnchor.constraint(equalToConstant: 106),
                                     getDirectionbtn.heightAnchor.constraint(equalToConstant: 28),
                                     getDirectionbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
                                     getDirectionbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 56)])
    }
    
    func addCheckInButton() {
        let checkInbtn = ElmButton()
        checkInbtn.frame = CGRect(x: 0, y: 0, width: 106, height: 28)
        checkInbtn.setTitle("Check In", for: .normal)
        self.addSubview(checkInbtn)
        checkInbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([checkInbtn.widthAnchor.constraint(equalToConstant: 106),
                                     checkInbtn.heightAnchor.constraint(equalToConstant: 28),
                                     checkInbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
                                     checkInbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 16)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
