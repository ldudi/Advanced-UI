//
//  CheckInVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 23/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CheckInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addCross()
        addTitleDescription()
        addGenerateQRCode()
        addCheckInManually()
        addSummaryCard()
        
    }
    
    func addSummaryCard() {
        // Check-in/Container

        let summaryCard = UILabel()
        summaryCard.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 264)
        summaryCard.backgroundColor = .clear

        summaryCard.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        summaryCard.layer.cornerRadius = 4
        summaryCard.layer.borderWidth = 1
        summaryCard.layer.borderColor = UIColor.darkGray.cgColor

        view.addSubview(summaryCard)
        summaryCard.translatesAutoresizingMaskIntoConstraints = false
        summaryCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        summaryCard.heightAnchor.constraint(equalToConstant: 264).isActive = true
        summaryCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        summaryCard.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        
        
        // CHECKING IN AT

        let topText = UILabel()
        topText.frame = CGRect(x: 0, y: 0, width: 74, height: 10)
        topText.backgroundColor = .clear

        topText.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        topText.font = UIFont(name: "Manrope-Regular", size: 10)
        topText.text = "CHECKING IN AT"

        summaryCard.addSubview(topText)
        topText.translatesAutoresizingMaskIntoConstraints = false
        topText.widthAnchor.constraint(equalToConstant: 74).isActive = true
        topText.heightAnchor.constraint(equalToConstant: 10).isActive = true
        topText.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 16).isActive = true
        topText.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 20).isActive = true
        
        
        // Alt-if Golf Course Road

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 221, height: 20)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-Bold", size: 20)
        title.text = "Alt-if Golf Course Road"

        summaryCard.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 221).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 16).isActive = true
        title.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 46).isActive = true
        
        
        
        // Vyapar Kendra Road, Sector 40, Gurugram

        let address = UILabel()
        address.frame = CGRect(x: 0, y: 0, width: 194, height: 10)
        address.backgroundColor = .clear

        address.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        address.font = UIFont(name: "Manrope-Regular", size: 10)
        address.text = "Vyapar Kendra Road, Sector 40, Gurugram"

        summaryCard.addSubview(address)
        address.translatesAutoresizingMaskIntoConstraints = false
        address.widthAnchor.constraint(equalToConstant: 194).isActive = true
        address.heightAnchor.constraint(equalToConstant: 10).isActive = true
        address.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 30).isActive = true
        address.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 74).isActive = true
        
        
        
        // Sec 54 Rapid Metro

        let metro = UILabel()
        metro.frame = CGRect(x: 0, y: 0, width: 90, height: 10)
        metro.backgroundColor = .clear
        
        metro.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        metro.font = UIFont(name: "Manrope-Regular", size: 10)
        metro.text = "Sec 54 Rapid Metro (2 kms)"
        
        summaryCard.addSubview(metro)
        metro.translatesAutoresizingMaskIntoConstraints = false
        metro.widthAnchor.constraint(equalToConstant: 90).isActive = true
        metro.heightAnchor.constraint(equalToConstant: 10).isActive = true
        metro.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 30).isActive = true
        metro.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 96).isActive = true
        
        
        
        
        // check In
        let checkInTime = UILabel()
        checkInTime.frame = CGRect(x: 0, y: 0, width: 42, height: 10)
        checkInTime.backgroundColor = .clear

        checkInTime.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        checkInTime.font = UIFont(name: "Manrope-Regular", size: 10)
        checkInTime.text = "Check-in 10 AM"

        summaryCard.addSubview(checkInTime)
        checkInTime.translatesAutoresizingMaskIntoConstraints = false
        checkInTime.widthAnchor.constraint(equalToConstant: 42).isActive = true
        checkInTime.heightAnchor.constraint(equalToConstant: 10).isActive = true
        checkInTime.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 30).isActive = true
        checkInTime.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 118).isActive = true
        
        
        
        let buttonWidth =  (summaryCard.bounds.width  - 48) / 2
        
        // get direction
        let getDirection = ElmButton(frame: CGRect(x: 0, y: 0, width:buttonWidth,  height: 36))
        getDirection.translatesAutoresizingMaskIntoConstraints = false
        getDirection.setTitle("Get Directions", for: .normal)
        summaryCard.addSubview(getDirection)
        NSLayoutConstraint.activate([getDirection.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 208),
                                     getDirection.leadingAnchor.constraint(equalTo: summaryCard.leadingAnchor, constant: 16),
                                     getDirection.widthAnchor.constraint(equalToConstant: buttonWidth),
                                     getDirection.heightAnchor.constraint(equalToConstant: 36)])
        
        // contact operator
        let contactOperator = GreyButton(frame: CGRect(x: 0, y: 0, width:buttonWidth,  height: 36))
        contactOperator.translatesAutoresizingMaskIntoConstraints = false
        contactOperator.setTitle("Contact Operator", for: .normal)
        summaryCard.addSubview(contactOperator)
        NSLayoutConstraint.activate([contactOperator.topAnchor.constraint(equalTo: summaryCard.topAnchor, constant: 208),
                                     contactOperator.trailingAnchor.constraint(equalTo: summaryCard.trailingAnchor, constant: -16),
                                     contactOperator.widthAnchor.constraint(equalToConstant: buttonWidth),
                                     contactOperator.heightAnchor.constraint(equalToConstant: 36)])
    }
    
    func addCheckInManually() {
        // CTA/Secondary/Full-width/Without-icon
        
        let checkInBtn = GreyButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 48))
        checkInBtn.setTitle("Check-in Manually", for: .normal)
        view.addSubview(checkInBtn)
        checkInBtn.translatesAutoresizingMaskIntoConstraints = false
        checkInBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        checkInBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        checkInBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        checkInBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 294).isActive = true

    }
    
    func addGenerateQRCode() {
        // CTA/Primary/Full-width/Without-icon
        
        let buttonQ = ElmButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 48))
        buttonQ.setTitle("Generate QR code", for: .normal)
        view.addSubview(buttonQ)
        buttonQ.translatesAutoresizingMaskIntoConstraints = false
        buttonQ.heightAnchor.constraint(equalToConstant: 48).isActive = true
        buttonQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        buttonQ.topAnchor.constraint(equalTo: view.topAnchor, constant: 226).isActive = true
        buttonQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true

    }
    
    func addTitleDescription() {
        // Seamless Check-in

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 185, height: 20)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-SemiBold", size: 20)
        title.text = "Seamless Check-in"
        
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 185).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        title.topAnchor.constraint(equalTo: view.topAnchor, constant: 104).isActive = true
        
        
        // Enjoy a seamless check- in to your workspace by displaying the QR code to the space operator or show them your booking ID.

        let description = UILabel()
        description.frame = CGRect(x: 0, y: 0, width: 327, height: 54)
        description.backgroundColor = .clear

        description.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        description.font = UIFont(name: "Manrope-Regular", size: 12)
        description.numberOfLines = 0
        description.lineBreakMode = .byWordWrapping
        description.text = "Enjoy a seamless check- in to your workspace by displaying the QR code to the space operator or show them your booking ID. "


        view.addSubview(description)
        description.translatesAutoresizingMaskIntoConstraints = false
//        description.widthAnchor.constraint(equalToConstant: 327).isActive = true
        description.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        description.heightAnchor.constraint(equalToConstant: 54).isActive = true
        description.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        description.topAnchor.constraint(equalTo: view.topAnchor, constant: 132).isActive = true



    }
    
    func addCross() {
        
        let crossbtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        crossbtn.setImage(UIImage(named: "Cancel"), for: .normal)
        view.addSubview(crossbtn)
        crossbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([crossbtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
                                     crossbtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                                     crossbtn.widthAnchor.constraint(equalToConstant: 32),
                                     crossbtn.heightAnchor.constraint(equalToConstant: 32)])
    }
    
}
