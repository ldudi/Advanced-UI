//
//  SpaceDetailsCorporateVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 23/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class SpaceDetailsCorporateVC: UIViewController {
    
    let scrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addScrollView()
        
        addDummyImage()
        
        addTitleView()
        
        addHorizontalSelector()
        
        addTextLabel()
        
        addSurroundings()
        
        addAmenities()
        
        addLocation()
        
        addLeftButton()
        
    }
    
    func addLeftButton() {
        let leftbtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        leftbtn.setImage(UIImage(named: "arrow-left"), for: .normal)
        scrollView.addSubview(leftbtn)
        leftbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([leftbtn.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     leftbtn.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
                                     leftbtn.widthAnchor.constraint(equalToConstant: 32),
                                     leftbtn.heightAnchor.constraint(equalToConstant: 32)])
    }
    
    func addLocation() {
        // Location

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 59, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 14 pt
        // (identical to box height)

        view.attributedText = NSMutableAttributedString(string: "Location", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 59).isActive = true
        view.heightAnchor.constraint(equalToConstant: 14).isActive = true
        view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 767).isActive = true
        
        
        
        // Map

        let mapView = UILabel()
        mapView.frame = CGRect(x: 0, y: 0, width: 327, height: 132)
        mapView.backgroundColor = .lightGray

        let shadows = UIView()
        shadows.frame = mapView.frame
        shadows.clipsToBounds = false
        mapView.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.114, blue: 0.106, alpha: 0.75).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 8, height: 8)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.2).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 24
        layer1.shadowOffset = CGSize(width: -8, height: -8)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.114, blue: 0.106, alpha: 0.4).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 12
        layer2.shadowOffset = CGSize(width: 2, height: 2)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = mapView.frame
        shapes.clipsToBounds = true
        mapView.addSubview(shapes)

//        let image3 = UIImage(named: ".png")?.cgImage
        let layer3 = CALayer()
//        layer3.contents = image3
        layer3.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 2.48, tx: 0, ty: -0.74))
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)

        shapes.layer.cornerRadius = 4

        scrollView.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.widthAnchor.constraint(equalToConstant: 327).isActive = true
        mapView.heightAnchor.constraint(equalToConstant: 132).isActive = true
        mapView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        mapView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 793).isActive = true

        
    }
    
    func addAmenities() {
        
        // Rectangle 348

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 327, height: 60)
        view.backgroundColor = .clear

        view.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        view.layer.cornerRadius = 4

        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 327).isActive = true
        view.heightAnchor.constraint(equalToConstant: 60).isActive = true
        view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 679).isActive = true
        
        
        
        // Amenities Included

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 129, height: 14)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        title.font = UIFont(name: "Manrope-SemiBold", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 14 pt
        // (identical to box height)

        title.attributedText = NSMutableAttributedString(string: "Amenities Included", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        
        scrollView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 129).isActive = true
        title.heightAnchor.constraint(equalToConstant: 14).isActive = true
        title.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 40).isActive = true
        title.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 695).isActive = true
        
        
        // 12 Amenities available

        let avail = UILabel()
        avail.frame = CGRect(x: 0, y: 0, width: 101, height: 10)
        avail.backgroundColor = .clear

        avail.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        avail.font = UIFont(name: "Manrope-SemiBold", size: 10)
        let paragraphStyle1 = NSMutableParagraphStyle()
        paragraphStyle1.lineHeightMultiple = 0.73

        // Line height: 10 pt
        // (identical to box height)

        avail.attributedText = NSMutableAttributedString(string: "12 Amenities available", attributes: [NSAttributedString.Key.kern: 0.03, NSAttributedString.Key.paragraphStyle: paragraphStyle1])

        scrollView.addSubview(avail)
        avail.translatesAutoresizingMaskIntoConstraints = false
        avail.widthAnchor.constraint(equalToConstant: 101).isActive = true
        avail.heightAnchor.constraint(equalToConstant: 10).isActive = true
        avail.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 40).isActive = true
        avail.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 713).isActive = true

        
    }
    
    func addSurroundings() {
        
        // Property Surroundings

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 153, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        view.attributedText = NSMutableAttributedString(string: "Property Surroundings", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 153).isActive = true
        view.heightAnchor.constraint(equalToConstant: 14).isActive = true
        view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 581).isActive = true
        
        
        // Sec 54 Rapid Metro
        
        let metro = UILabel()
        metro.frame = CGRect(x: 0, y: 0, width: 126, height: 14)
        metro.backgroundColor = .clear

        metro.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        metro.font = UIFont(name: "Manrope-Regular", size: 14)
        let paragraphStyle1 = NSMutableParagraphStyle()
        paragraphStyle1.lineHeightMultiple = 0.73

        // Line height: 14 pt
        // (identical to box height)

        metro.attributedText = NSMutableAttributedString(string: "Sec 54 Rapid Metro (2 kms)", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle1])

        scrollView.addSubview(metro)
        metro.translatesAutoresizingMaskIntoConstraints = false
        metro.widthAnchor.constraint(equalToConstant: 126).isActive = true
        metro.heightAnchor.constraint(equalToConstant: 14).isActive = true
        metro.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 48).isActive = true
        metro.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 609).isActive = true
        
        
        // Bus Stop 22

        let bs = UILabel()
        bs.frame = CGRect(x: 0, y: 0, width: 77, height: 14)
        bs.backgroundColor = .clear

        bs.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        bs.font = UIFont(name: "Manrope-Regular", size: 14)
        let paragraphStyle2 = NSMutableParagraphStyle()
        paragraphStyle2.lineHeightMultiple = 0.73

        // Line height: 14 pt
        // (identical to box height)

        bs.attributedText = NSMutableAttributedString(string: "Bus Stop 22 (0.5 kms)", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle2])

        scrollView.addSubview(bs)
        bs.translatesAutoresizingMaskIntoConstraints = false
        bs.widthAnchor.constraint(equalToConstant: 77).isActive = true
        bs.heightAnchor.constraint(equalToConstant: 14).isActive = true
        bs.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 48).isActive = true
        bs.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 636).isActive = true

        
        
        
    }
    
    func addTextLabel() {
        // This space provides everything you need for meetings; web-conferencing capabilities, presentation apps such as PowerPoint, and even a digital whiteboard
        
        let width = UIScreen.main.bounds.width - 48
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: width, height: 88)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Regular", size: 14)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.text = "This space provides everything you need for meetings; web-conferencing capabilities, presentation apps such as PowerPoint, and even a digital whiteboard"
        
        
        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 88).isActive = true
        view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 465).isActive = true


    }
    
    func addHorizontalSelector() {
        
        let segmentItems = ["About", "Space Safety"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 0, y: 0, width: 243, height: 38)
        
        control.selectedSegmentTintColor = UIColor.primaryGreen
        control.backgroundColor = UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1)
        let font: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font : UIFont(name: "Manrope-Medium", size: 14)!,
                                                    NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        control.setTitleTextAttributes(font, for: .normal)
        
        control.selectedSegmentIndex = 1
        scrollView.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([control.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 411),
                                     control.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     control.heightAnchor.constraint(equalToConstant: 38),
                                     control.widthAnchor.constraint(equalToConstant: 243)])
    }
    
    func addTitleView() {
        
        // Alt - if Golf Course Road

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 204, height: 18)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-SemiBold", size: 18)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 18 pt
        // (identical to box height)

        title.attributedText = NSMutableAttributedString(string: "Alt - if Golf Course Road", attributes: [NSAttributedString.Key.kern: 0.04, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        scrollView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 204).isActive = true
        title.heightAnchor.constraint(equalToConstant: 18).isActive = true
        title.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        title.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 324).isActive = true
        
        
        
        
        // Vyapar Kendra Road, Sector 40, Gurugram

        let address = LocationLabel(frame: CGRect(x: 0, y: 0, width: 238, height: 12))
        
        scrollView.addSubview(address)
        address.translatesAutoresizingMaskIntoConstraints = false
        address.widthAnchor.constraint(equalToConstant: 238).isActive = true
        address.heightAnchor.constraint(equalToConstant: 12).isActive = true
        address.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        address.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 352).isActive = true
        
        
        // Open Now

        let text = TimingLabel(frame: CGRect(x: 0, y: 0, width: 150, height: 12))
        text.timingString.text = "08:00 - 2:00 Open Now"
        
        scrollView.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.widthAnchor.constraint(equalToConstant: 150).isActive = true
        text.heightAnchor.constraint(equalToConstant: 12).isActive = true
        text.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        text.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 375).isActive = true
    }
    
    func addDummyImage() {
        // Rectangle 360

        let imageOne = UIImageView()
        imageOne.image = UIImage(named: "Rectangle 278")
        view.frame = CGRect(x: 0, y: 0, width: 249, height: 200)
        
        let layer0 = CALayer()
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1.2, b: 0, c: 0, d: 1, tx: -0.1, ty: 0))
        layer0.bounds = view.bounds
        layer0.position = view.center
        imageOne.layer.addSublayer(layer0)
        
        scrollView.addSubview(imageOne)
        imageOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([imageOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 100),
                                     imageOne.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     imageOne.widthAnchor.constraint(equalToConstant: 249),
                                     imageOne.heightAnchor.constraint(equalToConstant: 200)])

    }
    
    func addScrollView() {
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: 2000)
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
    }
    
}
