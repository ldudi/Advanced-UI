//
//  MembershipPlansCard.swift
//  StyleWork
//
//  Created by Kapil Dev on 20/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class MembershipPlansCard: UIView {

        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addContainer()
        // pencilgrey
//        addAurora()
        addFixedLabel()
        addImageLogo()
        addTitleLabel()
        addDuration()
        addSubTitle()
        openDeskIndicator()
        mrcr()
        addEmplyee()
        addLocationImages()
        addAmenities()
    }
    
    func addAmenities() {
        
        let amenitiesView = UIView(frame: CGRect(x: 0, y: 0, width: 187, height: 18))
        var leading: Int = 0
        let imageCollection: [String] = ["Easy-Accessibilty", "Food & Beverage", "Gaming-Room", "WifiCorporate", "Car-Parking"]
        for i in 0..<imageCollection.count {
            let amenitieImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
            amenitieImage.image = UIImage(named: imageCollection[i])
            amenitiesView.addSubview(amenitieImage)
            amenitieImage.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([amenitieImage.widthAnchor.constraint(equalToConstant: 16),
                                         amenitieImage.heightAnchor.constraint(equalToConstant: 16),
                                         amenitieImage.centerYAnchor.constraint(equalTo: amenitiesView.centerYAnchor),
                                         amenitieImage.leadingAnchor.constraint(equalTo: amenitiesView.leadingAnchor, constant: CGFloat(leading))])
            leading += 28
        }
        self.addSubview(amenitiesView)
        amenitiesView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([amenitiesView.widthAnchor.constraint(equalToConstant: 187),
                                     amenitiesView.heightAnchor.constraint(equalToConstant: 18),
                                     amenitiesView.topAnchor.constraint(equalTo: self.topAnchor, constant: 188),
                                     amenitiesView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 114)])
    }
    
    func addLocationImages() {
        //Rectangle 278
        let imageOne = UIImageView()
        imageOne.frame = CGRect(x: 0, y: 0, width: 88, height: 79)
        imageOne.backgroundColor = .clear
        imageOne.image = UIImage(named: "Rectangle 278")
        
        let layer0 = CALayer()
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.35, b: 0, c: 0, d: 1, tx: -0.17, ty: 0))
        layer0.bounds = imageOne.bounds
        layer0.position = imageOne.center
        imageOne.layer.addSublayer(layer0)

        imageOne.layer.cornerRadius = 4

        self.addSubview(imageOne)
        imageOne.translatesAutoresizingMaskIntoConstraints = false
        imageOne.widthAnchor.constraint(equalToConstant: 88).isActive = true
        imageOne.heightAnchor.constraint(equalToConstant: 79).isActive = true
        imageOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        imageOne.topAnchor.constraint(equalTo: self.topAnchor, constant: 94).isActive = true
        
        
        // image two
        let imageTwo = UIImageView()
        imageTwo.frame = CGRect(x: 0, y: 0, width: 22, height: 24)
        imageTwo.backgroundColor = .clear
        imageTwo.image = UIImage(named: "Rectangle 278")
        
        let layer1 = CALayer()
        layer1.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.35, b: 0, c: 0, d: 1, tx: -0.17, ty: 0))
        layer1.bounds = imageTwo.bounds
        layer1.position = imageTwo.center
        imageTwo.layer.addSublayer(layer1)

        imageTwo.layer.cornerRadius = 4

        self.addSubview(imageTwo)
        imageTwo.translatesAutoresizingMaskIntoConstraints = false
        imageTwo.widthAnchor.constraint(equalToConstant: 22).isActive = true
        imageTwo.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imageTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        imageTwo.topAnchor.constraint(equalTo: self.topAnchor, constant: 181).isActive = true
        
        
        // image three
        let imageThree = UIImageView()
        imageThree.frame = CGRect(x: 0, y: 0, width: 22, height: 24)
        imageThree.backgroundColor = .clear
        imageThree.image = UIImage(named: "Rectangle 278")
        
        let layer2 = CALayer()
        layer2.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.35, b: 0, c: 0, d: 1, tx: -0.17, ty: 0))
        layer2.bounds = imageThree.bounds
        layer2.position = imageThree.center
        imageThree.layer.addSublayer(layer2)

        imageThree.layer.cornerRadius = 4

        self.addSubview(imageThree)
        imageThree.translatesAutoresizingMaskIntoConstraints = false
        imageThree.widthAnchor.constraint(equalToConstant: 22).isActive = true
        imageThree.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imageThree.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 49).isActive = true
        imageThree.topAnchor.constraint(equalTo: self.topAnchor, constant: 181).isActive = true
        
        
        // image four
        let imageFour = UIImageView()
        imageFour.frame = CGRect(x: 0, y: 0, width: 22, height: 24)
        imageFour.backgroundColor = .clear
        imageFour.image = UIImage(named: "Rectangle 278")
        
        let layer3 = CALayer()
        layer3.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.35, b: 0, c: 0, d: 1, tx: -0.17, ty: 0))
        layer3.bounds = imageFour.bounds
        layer3.position = imageFour.center
        imageFour.layer.addSublayer(layer3)

        imageFour.layer.cornerRadius = 4

        self.addSubview(imageFour)
        imageFour.translatesAutoresizingMaskIntoConstraints = false
        imageFour.widthAnchor.constraint(equalToConstant: 22).isActive = true
        imageFour.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imageFour.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 82).isActive = true
        imageFour.topAnchor.constraint(equalTo: self.topAnchor, constant: 181).isActive = true

    }
    
    func addEmplyee() {
        var leadingAnchor = 156
        let images = ["Ellipse 138", "Ellipse 137", "Ellipse 136", "Ellipse 135", "Ellipse 134", "Ellipse 133", "Ellipse 132", "Ellipse 131",]
        for i in 0...7 {
            let ellipseOne = UIImageView()
            ellipseOne.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
            ellipseOne.backgroundColor = .clear
            ellipseOne.image = UIImage(named: images[i])
            
            let layer0 = CALayer()
            layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1.33, tx: 0, ty: -0.17))
            layer0.bounds = ellipseOne.bounds
            layer0.position = ellipseOne.center
            ellipseOne.layer.addSublayer(layer0)
            
            self.addSubview(ellipseOne)
            ellipseOne.translatesAutoresizingMaskIntoConstraints = false
            ellipseOne.widthAnchor.constraint(equalToConstant: 32).isActive = true
            ellipseOne.heightAnchor.constraint(equalToConstant: 32).isActive = true
            ellipseOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: CGFloat(leadingAnchor)).isActive = true
            ellipseOne.topAnchor.constraint(equalTo: self.topAnchor, constant: 274).isActive = true
            
            leadingAnchor -= 20
        }
        
        // +30 more
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 28, height: 14))
        label.text = "+ 30"
        label.textColor = UIColor.textLight
        label.font = UIFont(name: "Manrope-Regular", size: 14)
        
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([label.widthAnchor.constraint(equalToConstant: 28),
                                     label.heightAnchor.constraint(equalToConstant: 14),
                                     label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 196),
                                     label.topAnchor.constraint(equalTo: self.topAnchor, constant: 283)])

    }
    
    func openDeskIndicator() {
        
        // Indicators/Open-desk

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 150, height: 28)
        view.backgroundColor = .clear

        view.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        view.layer.cornerRadius = 2

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 150),
                                     view.heightAnchor.constraint(equalToConstant: 28),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 230)])
        
        
        // Open Desk Usage

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 12)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        label.font = UIFont(name: "Manrope-Medium", size: 12)
        label.text = "Open Desk Usage"

        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([label.widthAnchor.constraint(equalToConstant: 100),
                                     label.heightAnchor.constraint(equalToConstant: 12),
                                     label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28),
                                     label.topAnchor.constraint(equalTo: self.topAnchor, constant: 238)])
        
        // ON
        
        let onSwitch = UILabel()
        onSwitch.frame = CGRect(x: 0, y: 0, width: 24, height: 20)
        onSwitch.backgroundColor = .clear
        onSwitch.layer.backgroundColor = UIColor(red: 0.07, green: 0.312, blue: 0.294, alpha: 1).cgColor
        onSwitch.layer.cornerRadius = 2
        
        onSwitch.textColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1)
        onSwitch.font = UIFont(name: "Manrope-Bold", size: 10)
        onSwitch.text = "ON"
        onSwitch.textAlignment = .center
        
        self.addSubview(onSwitch)
        onSwitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([onSwitch.widthAnchor.constraint(equalToConstant: 24),
                                     onSwitch.heightAnchor.constraint(equalToConstant: 20),
                                     onSwitch.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 135),
                                     onSwitch.topAnchor.constraint(equalTo: self.topAnchor, constant: 234)])
        
    }
    
    func mrcr() {
        
        // Indicators/ MR/CR

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 92, height: 28)
        view.backgroundColor = .clear

        view.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        view.layer.cornerRadius = 2

        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 92),
                                     view.heightAnchor.constraint(equalToConstant: 28),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 181),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 230)])
        
        
        // MR/CR

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 12)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        label.font = UIFont(name: "Manrope-Medium", size: 12)
        label.text = "MR/CR"

        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([label.widthAnchor.constraint(equalToConstant: 40),
                                     label.heightAnchor.constraint(equalToConstant: 12),
                                     label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 193),
                                     label.topAnchor.constraint(equalTo: self.topAnchor, constant: 238)])
        
        // OFF
        
        let offSwitch = UILabel()
        offSwitch.frame = CGRect(x: 0, y: 0, width: 28, height: 20)
        offSwitch.backgroundColor = .clear
        offSwitch.layer.backgroundColor = UIColor(red: 0.283, green: 0.182, blue: 0.182, alpha: 1).cgColor
        offSwitch.layer.cornerRadius = 2
        
        offSwitch.textAlignment = .center
        
        offSwitch.textColor = UIColor(red: 0.621, green: 0.31, blue: 0.31, alpha: 1)
        offSwitch.font = UIFont(name: "Manrope-Bold", size: 10)
        offSwitch.text = "OFF"
        
        self.addSubview(offSwitch)
        offSwitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([offSwitch.widthAnchor.constraint(equalToConstant: 28),
                                     offSwitch.heightAnchor.constraint(equalToConstant: 20),
                                     offSwitch.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 241),
                                     offSwitch.topAnchor.constraint(equalTo: self.topAnchor, constant: 234)])
    }
    
    func addSubTitle() {
        
        // Alt-if Golf Course Road

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 150, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 14)
        view.text = "Alt-if Golf Course Road"
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 150),
                                     view.heightAnchor.constraint(equalToConstant: 14),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 116),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 94)])

        // location label
        
        let viewOne = LocationLabel(frame: CGRect(x: 0, y: 0, width: 179, height: 28))
        self.addSubview(viewOne)
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([viewOne.widthAnchor.constraint(equalToConstant: 179),
                                     viewOne.heightAnchor.constraint(equalToConstant: 28),
                                     viewOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 114),
                                     viewOne.topAnchor.constraint(equalTo: self.topAnchor, constant: 114)])
        
        // Nearest Location
        
        let viewTwo = NearestLocation(frame: CGRect(x: 0, y: 0, width: 179, height: 10))
        
        self.addSubview(viewTwo)
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([viewTwo.widthAnchor.constraint(equalToConstant: 179),
                                     viewTwo.heightAnchor.constraint(equalToConstant: 10),
                                     viewTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 114),
                                     viewTwo.topAnchor.constraint(equalTo: self.topAnchor, constant: 148)])
        
        // timing label
        let viewThree = TimingLabel(frame: CGRect(x: 0, y: 0, width: 150, height: 10))
        
        self.addSubview(viewThree)
        viewThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([viewThree.widthAnchor.constraint(equalToConstant: 150),
                                     viewThree.heightAnchor.constraint(equalToConstant: 10),
                                     viewThree.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 114),
                                     viewThree.topAnchor.constraint(equalTo: self.topAnchor, constant: 164)])
        
    }
    
    func addDuration() {
        
        // image
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 12, height: 12)
        view.backgroundColor = .clear
        view.image = UIImage(named: "PayU money")
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 12),
                                     view.heightAnchor.constraint(equalToConstant: 12),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 66)])
        
        // Monthly
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 46, height: 12)
        label.backgroundColor = .clear
        
        label.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        label.font = UIFont(name: "Manrope-Regular", size: 12)
        label.text = "Monthly"
        
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([label.widthAnchor.constraint(equalToConstant: 46),
                                     label.heightAnchor.constraint(equalToConstant: 12),
                                     label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 34),
                                     label.topAnchor.constraint(equalTo: self.topAnchor, constant: 66)])
        
        
    }
    
    func addTitleLabel() {
        
        // Sales: Gurugram PayU
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 293, height: 16)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 16)
        view.text = "Sales: Gurugram PayU"
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 293),
                                     view.heightAnchor.constraint(equalToConstant: 26),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 40)])

    }
    
    func addImageLogo() {
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 62, height: 18)
        view.backgroundColor = .clear
        view.image = UIImage(named: "PayU money")
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 62),
                                     view.heightAnchor.constraint(equalToConstant: 18),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 16)])
        
    }
    
    func addFixedLabel() {
        
        // Indicators/Membership-type

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 51, height: 18)
        view.backgroundColor = .clear
        
        view.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 10)
        view.text = "FIXED"
        view.textAlignment = .center
        view.layer.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        view.layer.cornerRadius = 2
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 51),
                                     view.heightAnchor.constraint(equalToConstant: 18),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: 12)])
    }
    
    func addAurora() {
        // Aurora/Gradients
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 207, height: 176.5)
        view.backgroundColor = .clear

        view.alpha = 0.4
        view.layer.compositingFilter = "screenBlendMode"
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        
        self.addSubview(view)
        NSLayoutConstraint.activate([view.widthAnchor.constraint(equalToConstant: 207),
                                     view.heightAnchor.constraint(equalToConstant: 176.5),
                                     view.topAnchor.constraint(equalTo: self.topAnchor, constant: -17),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 36)])
        
        
        // Vector 267

        let vectorOne = UILabel()
        vectorOne.frame = CGRect(x: 0, y: 0, width: 126, height: 94.98)
        vectorOne.backgroundColor = .clear

        vectorOne.alpha = 0.6
        let layer0 = CAGradientLayer()
        layer0.colors = [
            UIColor.clear.cgColor,
            UIColor(red: 0.318, green: 0.29, blue: 0.616, alpha: 0.6).cgColor
        ]
        layer0.locations = [0.3, 0.7]
        layer0.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer0.endPoint = CGPoint(x: 0.75, y: 0.5)
//        layer0.bounds = vectorOne.bounds.insetBy(dx: -0.5*vectorOne.bounds.size.width, dy: -0.5*vectorOne.bounds.size.height)
        layer0.frame = vectorOne.bounds
//        layer0.position = vectorOne.center
        vectorOne.layer.addSublayer(layer0)
        view.addSubview(vectorOne)
        vectorOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([vectorOne.widthAnchor.constraint(equalToConstant: 126),
                                     vectorOne.heightAnchor.constraint(equalToConstant: 94.98),
                                     vectorOne.topAnchor.constraint(equalTo: view.topAnchor),
                                     vectorOne.trailingAnchor.constraint(equalTo: self.trailingAnchor)])
        
        
        // Vector 266

        let vectorTwo = UILabel()
        vectorTwo.frame = CGRect(x: 0, y: 0, width: 116.5, height: 175.5)
        vectorTwo.backgroundColor = .clear

        vectorTwo.alpha = 0.5
        let layer00 = CAGradientLayer()
        layer00.colors = [
//          UIColor(red: 0.902, green: 0.361, blue: 0, alpha: 1).cgColor,
            UIColor.clear.cgColor,
            UIColor(red: 0.976, green: 0.831, blue: 0.137, alpha: 0.5).cgColor
        ]
        layer00.locations = [0.3, 0.7]
        layer00.startPoint = CGPoint(x: 0, y:1 )
        layer00.endPoint = CGPoint(x: 1, y: 0)
//        layer00.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -0.2, b: 0.82, c: -1.87, d: -0.2, tx: 1.81, ty: 0))
//        layer00.bounds = vectorTwo.bounds.insetBy(dx: -0.5*vectorTwo.bounds.size.width, dy: -0.5*vectorTwo.bounds.size.height)
        layer00.frame = vectorTwo.bounds
        vectorTwo.layer.mask = layer00
        vectorTwo.layer.insertSublayer(layer00, at: 0)
//        vectorTwo.layer.mask = layer00
        
//        vectorTwo.layer.addSublayer(layer00)
        
        
        
        view.addSubview(vectorTwo)
        vectorTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([vectorTwo.widthAnchor.constraint(equalToConstant: 116.5),
                                     vectorTwo.heightAnchor.constraint(equalToConstant: 175.5),
                                     vectorTwo.topAnchor.constraint(equalTo: view.topAnchor),
                                     vectorTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor)])
        
        
        // Vector 265

        let vectorThree = UILabel()
        vectorThree.frame = CGRect(x: 0, y: 0, width: 190.5, height: 126.5)
        vectorThree.backgroundColor = .clear

        vectorThree.alpha = 0.5
        let layer007 = CAGradientLayer()
        layer007.colors = [
            UIColor.clear.cgColor,
            UIColor(red: 0.984, green: 0.78, blue: 0.831, alpha: 0.5).cgColor
        ]
        layer007.locations = [0.3, 0.7]
        layer007.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer007.endPoint = CGPoint(x: 0.75, y: 0.5)
//        layer007.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.69, b: 0.72, c: -0.32, d: 0.69, tx: 0.29, ty: -0.35))
//        layer007.bounds = vectorThree.bounds.insetBy(dx: -0.5*vectorThree.bounds.size.width, dy: -0.5*vectorThree.bounds.size.height)
        layer007.frame = vectorThree.bounds
//        layer007.position = vectorThree.center
        vectorThree.layer.addSublayer(layer007)

        view.addSubview(vectorThree)
        vectorThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([vectorThree.widthAnchor.constraint(equalToConstant: 190.5),
                                     vectorThree.heightAnchor.constraint(equalToConstant: 126.5),
                                     vectorThree.topAnchor.constraint(equalTo: self.topAnchor),
                                     vectorThree.trailingAnchor.constraint(equalTo: self.trailingAnchor)])
        
        
    }
    
    func addContainer() {
        // Container

        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 327)
        view.backgroundColor = .clear

        
        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.6).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 40
        layer0.shadowOffset = CGSize(width: 5, height: 5)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.325, green: 0.337, blue: 0.357, alpha: 0.59).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 20
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.4).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 12
        layer2.shadowOffset = CGSize(width: 2, height: 2)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer3 = CALayer()
        layer3.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)

        shapes.layer.cornerRadius = 4
        
        
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: view.frame.size)
        gradient.colors = [UIColor(red: 131/255, green: 124/255, blue: 210/255, alpha: 1).cgColor,
                           UIColor(red: 54/255, green: 58/255, blue: 64/255, alpha: 0).cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        let shape = CAShapeLayer()
        shape.lineWidth = 2
        shape.path = UIBezierPath(rect: view.bounds).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape

        view.layer.addSublayer(gradient)
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.topAnchor),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     view.bottomAnchor.constraint(equalTo: self.bottomAnchor)])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
