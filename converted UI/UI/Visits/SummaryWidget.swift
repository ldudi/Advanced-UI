//
//  SummaryWidget.swift
//  StyleWork
//
//  Created by Kapil Dev on 24/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class SummaryWidget: UIView {
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addRectangle()
        addTitle()
        addConducted()
        addDeclined()
        addDateFrame()
        addSummaryControl()
        
        addProgressBar()
    }
    
    func addProgressBar() {
        
        let lineOne = VerticalProgressView(frame: CGRect(x: 0, y: 0, width: 8, height: 145))
        lineOne.addFilledView(factor: 5)
        
        self.addSubview(lineOne)
        lineOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([lineOne.widthAnchor.constraint(equalToConstant: 8),
                                     lineOne.heightAnchor.constraint(equalToConstant: 145),
                                     lineOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 58),
                                     lineOne.topAnchor.constraint(equalTo: self.topAnchor, constant: 171)])
        
        //line two
        let lineTwo = VerticalProgressView(frame: CGRect(x: 0, y: 0, width: 8, height: 145))
        lineTwo.addFilledView(factor: 2)
        
        self.addSubview(lineTwo)
        lineTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([lineTwo.widthAnchor.constraint(equalToConstant: 8),
                                     lineTwo.heightAnchor.constraint(equalToConstant: 145),
                                     lineTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 130),
                                     lineTwo.topAnchor.constraint(equalTo: self.topAnchor, constant: 171)])
        
        // line three
        let lineThree = VerticalProgressView(frame: CGRect(x: 0, y: 0, width: 8, height: 145))
        lineThree.addFilledView(factor: 4)
        
        self.addSubview(lineThree)
        lineThree.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([lineThree.widthAnchor.constraint(equalToConstant: 8),
                                     lineThree.heightAnchor.constraint(equalToConstant: 145),
                                     lineThree.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 202),
                                     lineThree.topAnchor.constraint(equalTo: self.topAnchor, constant: 171)])
        
        // line four
        let lineFour = VerticalProgressView(frame: CGRect(x: 0, y: 0, width: 8, height: 145))
        lineFour.addFilledView(factor: 1)
        
        self.addSubview(lineFour)
        lineFour.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([lineFour.widthAnchor.constraint(equalToConstant: 8),
                                     lineFour.heightAnchor.constraint(equalToConstant: 145),
                                     lineFour.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 274),
                                     lineFour.topAnchor.constraint(equalTo: self.topAnchor, constant: 171)])
        
    }
    
    func addDateFrame() {
        // Frame 872

        let rectangle = UILabel()
        rectangle.frame = CGRect(x: 0, y: 0, width: 74, height: 28)
        rectangle.backgroundColor = .clear

        rectangle.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        rectangle.layer.cornerRadius = 2

        self.addSubview(rectangle)
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        rectangle.widthAnchor.constraint(equalToConstant: 74).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: 28).isActive = true
        rectangle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        rectangle.topAnchor.constraint(equalTo: self.topAnchor, constant: 104).isActive = true
        
        // Jan 21

        let dateLabel = UILabel()
        dateLabel.frame = CGRect(x: 0, y: 0, width: 34, height: 12)
        dateLabel.backgroundColor = .clear

        dateLabel.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        dateLabel.font = UIFont(name: "Manrope-Medium", size: 12)
        dateLabel.text = "Jan 21"

        dateLabel.textAlignment = .center
        
        self.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.widthAnchor.constraint(equalToConstant: 34).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -44).isActive = true
        dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 112).isActive = true
        
        
        // Frame 871

        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 8, height: 8)
        image.backgroundColor = .clear
        image.image = UIImage(named: "upside triangle dark")
        
        self.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 8).isActive = true
        image.heightAnchor.constraint(equalToConstant: 8).isActive = true
        image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -28).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 114).isActive = true
    }
    
    func addDeclined() {
        // 04

        let digit = UILabel()
        digit.frame = CGRect(x: 0, y: 0, width: 25, height: 20)
        digit.backgroundColor = .clear

        digit.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        digit.font = UIFont(name: "Manrope-Medium", size: 20)
        digit.text = "04"

        self.addSubview(digit)
        digit.translatesAutoresizingMaskIntoConstraints = false
        digit.widthAnchor.constraint(equalToConstant: 25).isActive = true
        digit.heightAnchor.constraint(equalToConstant: 20).isActive = true
        digit.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110).isActive = true
        digit.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        
        
        // Declined

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 42, height: 10)
        label.backgroundColor = .clear

        label.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        label.font = UIFont(name: "Manrope-Medium", size: 10)
        label.text = "Declined"

        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 42).isActive = true
        label.heightAnchor.constraint(equalToConstant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110).isActive = true
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 124).isActive = true


    }
    
    func addConducted() {
        // 12

        let digit = UILabel()
        digit.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        digit.backgroundColor = .clear

        digit.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        digit.font = UIFont(name: "Manrope-Medium", size: 20)
        digit.text = "12"
        digit.textAlignment = .center
        
        self.addSubview(digit)
        digit.translatesAutoresizingMaskIntoConstraints = false
        digit.widthAnchor.constraint(equalToConstant: 20).isActive = true
        digit.heightAnchor.constraint(equalToConstant: 20).isActive = true
        digit.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        digit.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        
        
        // Conducted

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 53, height: 10)
        label.backgroundColor = .clear

        label.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        label.font = UIFont(name: "Manrope-Medium", size: 10)
        label.text = "Conducted"

        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 53).isActive = true
        label.heightAnchor.constraint(equalToConstant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17).isActive = true
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 124).isActive = true
        
        
    }
    
    func addSummaryControl() {
        let width = self.bounds.width - 28
        let segmentItems = ["Weekly", "Monthly", "Quarterly"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 0, y: 0, width: width, height: 36)
        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        
        control.selectedSegmentTintColor = UIColor.primaryGreen
        control.backgroundColor = UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1)
        let font: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font : UIFont(name: "Manrope-Medium", size: 14)!,
                                                    NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        control.setTitleTextAttributes(font, for: .normal)
        
        control.selectedSegmentIndex = 0
        self.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([control.topAnchor.constraint(equalTo: self.topAnchor, constant: 46),
                                     control.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     control.heightAnchor.constraint(equalToConstant: 36),
                                     control.widthAnchor.constraint(equalToConstant: width)])
    }
    
    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
            case 0:
                
                break
            case 1:
                
                break
        case 2:
            break
            default:
                break
       }
    }
    
    func addTitle() {
        // Visits Summary

        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 101, height: 14)
        title.backgroundColor = .clear

        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-Medium", size: 14)
        title.text = "Visits Summary"
        
        self.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 101).isActive = true
        title.heightAnchor.constraint(equalToConstant: 14).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true

    }
    
    func addRectangle() {
        // Rectangle 360

        let baseRectangle = UILabel()
//        baseRectangle.frame = CGRect(x: 0, y: 0, width: 327, height: 352)
        baseRectangle.frame = self.frame
        baseRectangle.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = baseRectangle.frame
        shadows.clipsToBounds = false
        baseRectangle.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 8)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.2).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 20
        layer0.shadowOffset = CGSize(width: 10, height: 10)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shapes = UIView()
        shapes.frame = baseRectangle.frame
        shapes.clipsToBounds = true
        baseRectangle.addSubview(shapes)

        let layer1 = CALayer()
        layer1.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer1.bounds = shapes.bounds
        layer1.position = shapes.center
        shapes.layer.addSublayer(layer1)

        shapes.layer.cornerRadius = 8
        
        baseRectangle.layer.borderWidth = 1
        baseRectangle.layer.borderColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1).cgColor

        self.addSubview(baseRectangle)
        baseRectangle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([baseRectangle.topAnchor.constraint(equalTo: self.topAnchor),
                                     baseRectangle.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     baseRectangle.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     baseRectangle.bottomAnchor.constraint(equalTo: self.bottomAnchor)])


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
