//
//  ScheduledVisitsCard.swift
//  StyleWork
//
//  Created by Kapil Dev on 20/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ScheduledVisitsCard: UIView {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        timings()
        addTitle()
        addSubtitle()
        addCheckInButton()
        addGetDirections()
        addCancel()
        
    }
    
    func addCancel() {
        
        // Not able to make it?

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 91, height: 10)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        view.font = UIFont(name: "Manrope-Regular", size: 10)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        view.attributedText = NSMutableAttributedString(string: "Not able to make it?", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 91),
                                     view.heightAnchor.constraint(equalToConstant: 10),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 13),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 158)])
        
        
        // Cancel visit

        let cButton = UIButton()
        cButton.frame = CGRect(x: 0, y: 0, width: 70, height: 10)
        cButton.backgroundColor = .clear
        
//        cButton.titleLabel?.textColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1)
        cButton.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 10)
        cButton.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        cButton.setTitle("Cancel visit?", for: .normal)
        
        self.addSubview(cButton)
        cButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([cButton.widthAnchor.constraint(equalToConstant: 70),
                                     cButton.heightAnchor.constraint(equalToConstant: 10),
                                     cButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 106),
                                     cButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 156)])


    }
    
    func addGetDirections() {
        
        let width = (self.frame.width - 40) / 2
        
        // CTA/Primary/Small
        let getDirectionbtn = GreyButton(frame: CGRect(x: 0, y: 0, width: 102, height: 28))
//        getDirectionbtn.frame =
        getDirectionbtn.setTitle("Get Directions", for: .normal)

        self.addSubview(getDirectionbtn)
        getDirectionbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([getDirectionbtn.widthAnchor.constraint(equalToConstant: width),
                                     getDirectionbtn.heightAnchor.constraint(equalToConstant: 28),
                                     getDirectionbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
                                     getDirectionbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 110)])
    }
    
    func addCheckInButton() {
        
        let width = (self.frame.width - 40) / 2
        let checkInbtn = ElmButton()
        checkInbtn.frame = CGRect(x: 0, y: 0, width: 106, height: 28)
        checkInbtn.setTitle("Check In", for: .normal)

        self.addSubview(checkInbtn)
        checkInbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([checkInbtn.widthAnchor.constraint(equalToConstant: width),
                                     checkInbtn.heightAnchor.constraint(equalToConstant: 28),
                                     checkInbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
                                     checkInbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 110)])
    }
    
    func addSubtitle() {
        
        let locationText = LocationLabel(frame: CGRect(x: 0, y: 0, width: 281, height: 28))
        locationText.locationString.text = "8th floor, Magnum Tower 1, Golf Course Extension Road, Sector 58, Gurugram"
        self.addSubview(locationText)
        locationText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([locationText.widthAnchor.constraint(equalToConstant: 281),
                                     locationText.heightAnchor.constraint(equalToConstant: 28),
                                     locationText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     locationText.topAnchor.constraint(equalTo: self.topAnchor, constant: 58)])
    }
    
    func addTitle() {
        // Co-offiz Golf Course Road

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 173, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 14 pt
        // (identical to box height)

        view.attributedText = NSMutableAttributedString(string: "Co-offiz Golf Course Road", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 173),
                                     view.heightAnchor.constraint(equalToConstant: 14),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 40)])

    }
    
    func timings() {
        
        let timingLabel = TimingLabel(frame: CGRect(x: 0, y: 0, width: 94, height: 12))
        timingLabel.timingString.text = "Today 10 A.M."
        
        self.addSubview(timingLabel)
        timingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([timingLabel.widthAnchor.constraint(equalToConstant: 94),
                                     timingLabel.heightAnchor.constraint(equalToConstant: 12),
                                     timingLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     timingLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
