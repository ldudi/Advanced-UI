//
//  ScheduledVisitsCalendar.swift
//  StyleWork
//
//  Created by Kapil Dev on 30/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ScheduledVisitsCalendar: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.textDarkGreyLowOpacity.cgColor
        
        addColorCoding()
        addTopTitle()
        addMainTitle()
        addAddress()
        addDate()
        addTime()
        addCheckInButton()
        addGetDirectionButton()
        addTag()
        
    }
    
    func addTag() {
        // Tags/In-Process

        let tag = UILabel()
        tag.frame = CGRect(x: 0, y: 0, width: 80, height: 22)
        tag.backgroundColor = .clear
        
        tag.text = "In Process"
        tag.textColor = UIColor(red: 0.98, green: 0.706, blue: 0.275, alpha: 1)
        tag.font = UIFont(name: "Manrope-Regular", size: 10)
        tag.textAlignment = .center

        tag.layer.backgroundColor = UIColor(red: 0.98, green: 0.706, blue: 0.275, alpha: 0.2).cgColor
        tag.layer.cornerRadius = 2

        self.addSubview(tag)
        tag.translatesAutoresizingMaskIntoConstraints = false
        tag.widthAnchor.constraint(equalToConstant: 80).isActive = true
        tag.heightAnchor.constraint(equalToConstant: 22).isActive = true
        tag.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12).isActive = true
        tag.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true

    }
    
    func addGetDirectionButton() {
        let getDirectionbtn = GreyButton()
        getDirectionbtn.frame = CGRect(x: 0, y: 0, width: 130, height: 32)
        getDirectionbtn.setTitle("Get Directions", for: .normal)
        
        getDirectionbtn.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(getDirectionbtn)
        NSLayoutConstraint.activate([getDirectionbtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -17),
                                     getDirectionbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 138),
                                     getDirectionbtn.widthAnchor.constraint(equalToConstant: (self.frame.width-51)/2),
                                     getDirectionbtn.heightAnchor.constraint(equalToConstant: 32)])
    }
    
    func addCheckInButton() {
        let checkInbtn = ElmButton()
        checkInbtn.frame = CGRect(x: 0, y: 0, width: 97, height: 32)
        checkInbtn.setTitle("Check In", for: .normal)
        
        checkInbtn.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(checkInbtn)
        NSLayoutConstraint.activate([checkInbtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17),
                                     checkInbtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 138),
                                     checkInbtn.widthAnchor.constraint(equalToConstant: (self.frame.width-51)/2),
                                     checkInbtn.heightAnchor.constraint(equalToConstant: 32)])
    }
    
    func addTime() {
        // Check-in

        let timeLabel = TimingLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 12))
        timeLabel.timingString.text = "Check-in 10 AM"
        self.addSubview(timeLabel)
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        timeLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        timeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 174).isActive = true
        timeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 95).isActive = true
    }
    
    func addDate() {
        // Thursday, April 7
        let dateLabel = TimingLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 12))
        dateLabel.timingString.text = "Thursday, April 7"

        self.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14).isActive = true
        dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 95).isActive = true
    }
    
    func addAddress() {
        // 12/32, Andheri West, Double Peripheral Road, Navi Mumbai, Mumbai - 400 008, India

        let width = self.bounds.size.width - 46
        let address = LocationLabel(frame: CGRect(x: 0, y: 0, width: width, height: 28))
        address.locationString.text = "12/32, Andheri West, Double Peripheral Road, Navi Mumbai, Mumbai - 400 008, India"
        self.addSubview(address)
        address.translatesAutoresizingMaskIntoConstraints = false
        address.widthAnchor.constraint(equalToConstant: width).isActive = true
        address.heightAnchor.constraint(equalToConstant: 28).isActive = true
        address.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14).isActive = true
        address.topAnchor.constraint(equalTo: self.topAnchor, constant: 60).isActive = true
    }
    
    func addMainTitle() {
        // SW Golf Course Road

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 161, height: 20)
        title.backgroundColor = .clear

        title.textColor = UIColor.textAlternateLightGrey
        title.font = UIFont(name: "Manrope-SemiBold", size: 16)
        title.text = "SW Golf Course Road"

        self.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 161).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 13).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 38).isActive = true

    }
    
    func addTopTitle() {
        // REQUESTED VISITS

        let topTitle = UILabel()
        topTitle.frame = CGRect(x: 0, y: 0, width: 87, height: 10)
        topTitle.backgroundColor = .clear

        topTitle.textColor = UIColor.textAlternateGrey
        topTitle.font = UIFont(name: "Manrope-Regular", size: 10)
        topTitle.text = "REQUESTED VISITS"

        self.addSubview(topTitle)
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        topTitle.widthAnchor.constraint(equalToConstant: 87).isActive = true
        topTitle.heightAnchor.constraint(equalToConstant: 12).isActive = true
        topTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14).isActive = true
        topTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true

    }
    
    func addColorCoding() {
        // Colored-Progress-Marker

        let stripe = UILabel()
        stripe.frame = CGRect(x: 0, y: 0, width: 4, height: self.bounds.size.height)
        stripe.backgroundColor = .clear
        stripe.layer.backgroundColor = UIColor(red: 0.98, green: 0.706, blue: 0.275, alpha: 1).cgColor
        stripe.layer.cornerRadius = 3

        self.addSubview(stripe)
        stripe.translatesAutoresizingMaskIntoConstraints = false
        stripe.widthAnchor.constraint(equalToConstant: 4).isActive = true
        stripe.heightAnchor.constraint(equalToConstant: self.bounds.height).isActive = true
        stripe.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stripe.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
