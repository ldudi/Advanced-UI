//
//  CalendarTappedDateVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 05/05/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CalendarTappedDateVC: UIViewController {
    
    let scrollView = UIScrollView()
    let width = UIScreen.main.bounds.width - 48

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.frame)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addScrollView()
        addOverlay()
        addLineSaparator()
        addDatePicker()
        addTitle()
        addSelectedDate()
        addReScheduledVisitCard()
    }
    
    func addReScheduledVisitCard() {
        let view = ReScheduledVisitsCard()
        view.frame = CGRect(x: 0, y: 0, width: width, height: 142)
        view.backgroundColor = .lightGray
        
        view.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        
        let parent = self.scrollView
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 142).isActive = true
        view.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 338).isActive = true
    }
    
    func addScrollView() {
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height)
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
        
    }
    
    func addOverlay() {
        // Overlay

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 214)
        view.backgroundColor = .clear

        let layer0 = CAGradientLayer()
        layer0.colors = [
          UIColor(red: 0.101, green: 0.109, blue: 0.117, alpha: 1).cgColor,
          UIColor(red: 0.149, green: 0.165, blue: 0.18, alpha: 0).cgColor
        ]
        layer0.locations = [0, 1]
        layer0.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer0.endPoint = CGPoint(x: 0.75, y: 0.5)
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0, b: -0.72, c: 0.72, d: -0.01, tx: 0.18, ty: 0.86))
        layer0.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        layer0.frame = view.bounds
        layer0.position = view.center
        view.layer.addSublayer(layer0)

        self.view.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: self.view.bounds.size.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 214).isActive = true
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true


    }
    
    func addLineSaparator() {
        // Line 121

        let line = UILabel()
        line.frame = CGRect(x: 0, y: 0, width: width, height: 1)
        line.backgroundColor = .clear

        let stroke = UIView()
        stroke.bounds = line.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = line.center
        line.addSubview(stroke)
        line.bounds = line.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor

        scrollView.addSubview(line)
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: width).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        line.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 281).isActive = true

    }
    
    func addDatePicker() {
        // month
        let monthButton = DropDownButton(frame: CGRect(x: 0, y: 0, width: 82, height: 38))
        monthButton.setTitle("April", for: .normal)
        
        scrollView.addSubview(monthButton)
        monthButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([monthButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 84),
                                     monthButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     monthButton.widthAnchor.constraint(equalToConstant: 82),
                                     monthButton.heightAnchor.constraint(equalToConstant: 38)])
        
        // year
        let yearButton = DropDownButton(frame: CGRect(x: 0, y: 0, width: 82, height: 38))
        yearButton.setTitle("2021", for: .normal)
        
        scrollView.addSubview(yearButton)
        yearButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([yearButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 84),
                                     yearButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 114),
                                     yearButton.widthAnchor.constraint(equalToConstant: 82),
                                     yearButton.heightAnchor.constraint(equalToConstant: 38)])
        
        // Monthly
        let durationButton = DropDownButton(frame: CGRect(x: 0, y: 0, width: 99, height: 38))
        durationButton.setTitle("Monthly", for: .normal)
        
        scrollView.addSubview(durationButton)
        durationButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([durationButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 84),
                                     durationButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -24),
                                     durationButton.widthAnchor.constraint(equalToConstant: 99),
                                     durationButton.heightAnchor.constraint(equalToConstant: 38)])
    }
    
    func addTitle() {
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 131, height: 20))
        title.text = "Your Calendar"
        title.font = UIFont(name: "manrope-medium", size: 20)
        title.textColor = UIColor.textLight
        
        scrollView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([title.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
                                     title.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     title.widthAnchor.constraint(equalToConstant: 131),
                                     title.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    func addSelectedDate() {
        // Rectangle 509

        let buttonView = UILabel()
        buttonView.frame = CGRect(x: 0, y: 0, width: width, height: 100)
        view.backgroundColor = .clear

        let shadows = UIView()
        shadows.frame = buttonView.frame
        shadows.clipsToBounds = false
        buttonView.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.4).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 24
        layer0.shadowOffset = CGSize(width: 4, height: 4)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.761, green: 0.784, blue: 0.824, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 24
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.098, green: 0.106, blue: 0.114, alpha: 0.2).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 8
        layer2.shadowOffset = CGSize(width: 2, height: 2)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)

        let shapes = UIView()
        shapes.frame = buttonView.frame
        shapes.clipsToBounds = true
        buttonView.addSubview(shapes)

        let layer3 = CALayer()
        layer3.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)

        shapes.layer.cornerRadius = 4

        scrollView.addSubview(buttonView)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.widthAnchor.constraint(equalToConstant: width).isActive = true
        buttonView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        buttonView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        buttonView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 154).isActive = true
        
        // today label
        let todayLabel = UILabel()
        todayLabel.frame = CGRect(x: 0, y: 0, width: 32, height: 10)
        todayLabel.backgroundColor = .clear
        todayLabel.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        todayLabel.font = UIFont(name: "Manrope-Medium", size: 10)
        todayLabel.text = "today"
        
        buttonView.addSubview(todayLabel)
        todayLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([todayLabel.widthAnchor.constraint(equalToConstant: 32),
                                     todayLabel.heightAnchor.constraint(equalToConstant: 10),
                                     todayLabel.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 14),
                                     todayLabel.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 16)])
        
        // date label
        let dateLabel = UILabel()
        dateLabel.frame = CGRect(x: 0, y: 0, width: 86, height: 16)
        dateLabel.backgroundColor = .clear
        dateLabel.textColor = UIColor.textLight
        dateLabel.font = UIFont(name: "Manrope-Medium", size: 16)
        dateLabel.text = "May 5, 2021"
        
        buttonView.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([dateLabel.widthAnchor.constraint(equalToConstant: 86),
                                     dateLabel.heightAnchor.constraint(equalToConstant: 16),
                                     dateLabel.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 32),
                                     dateLabel.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 15)])
        
        // Rectangle 510
        let colorCoding = UILabel()
        colorCoding.frame = CGRect(x: 0, y: 0, width: 2, height: 16)
        colorCoding.backgroundColor = UIColor(red: 40/255, green: 160/255, blue: 52/255, alpha: 1)
//        colorCoding.layer.backgroundColor = UIColor(red: 40/255, green: 160/255, blue: 52/255, alpha: 1).cgColor
//        colorCoding.layer.cornerRadius = 49
        buttonView.addSubview(colorCoding)
        colorCoding.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([colorCoding.widthAnchor.constraint(equalToConstant: 1),
                                     colorCoding.heightAnchor.constraint(equalToConstant: 16),
                                     colorCoding.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 68),
                                     colorCoding.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 16)])
        
        // 1
        let one = UILabel()
        one.frame = CGRect(x: 0, y: 0, width: 7, height: 16)
        one.backgroundColor = .clear
        one.textColor = UIColor.textLight
        one.font = UIFont(name: "Manrope-Medium", size: 16)
        one.text = "1"
        buttonView.addSubview(one)
        one.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([one.widthAnchor.constraint(equalToConstant: 7),
                                     one.heightAnchor.constraint(equalToConstant: 16),
                                     one.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 68),
                                     one.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 28)])
        
        // visit
        let visitLabel = UILabel()
        visitLabel.frame = CGRect(x: 0, y: 0, width: 88, height: 12)
        visitLabel.backgroundColor = .clear
        visitLabel.textColor = UIColor(red: 0.486, green: 0.499, blue: 0.525, alpha: 1)
        visitLabel.font = UIFont(name: "Manrope-Medium", size: 12)
        visitLabel.text = "Visit Scheduled"
        buttonView.addSubview(visitLabel)
        visitLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([visitLabel.widthAnchor.constraint(equalToConstant: 88),
                                     visitLabel.heightAnchor.constraint(equalToConstant: 12),
                                     visitLabel.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 71),
                                     visitLabel.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 39)])
        
        // Dropdown-alternate
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 12, height: 12))
        imageView.backgroundColor = .clear
        imageView.image = UIImage(named: "Dropdown-alternate")
        buttonView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([imageView.widthAnchor.constraint(equalToConstant: 12),
                                    imageView.heightAnchor.constraint(equalToConstant: 12),
                                    imageView.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 44),
                                    imageView.trailingAnchor.constraint(equalTo: buttonView.trailingAnchor, constant: -22)])
        
    }
    
}
