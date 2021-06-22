//
//  HomeViewController.swift
//  StyleWork
//
//  Created by Kapil Dev on 14/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width - 48
    
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
        
        addScrollView()
        
        addMembershipCard()
        addScheduledVisitsCard()
        addReScheduledVisitsCard()
        addYourMembershipLabel()
        addYourVisitsLabel()
        addTitleView()
        
        addYourSchedule()
        
        addUpperHorizontalScroll()
        addLowerHorizontalScroll()
        
    }
    
    func addUpperHorizontalScroll() {
        
        // Hori-scroll/Date-picker
        
        let horiScroll = UIScrollView()
        horiScroll.frame = CGRect(x: 0, y: 0, width: width, height: 72)
        horiScroll.backgroundColor = .clear
        horiScroll.contentSize = CGSize(width: 428, height: 72)
        horiScroll.showsHorizontalScrollIndicator = false
        
        let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 432, height: 72))
        stackView.axis = .horizontal
        stackView.spacing = 16
        stackView.distribution = .equalSpacing
        stackView.backgroundColor = .clear
        
        let days = ["SUN", "MON", "TUE", "WED", "THURS", "FRI", "SAT"]
        let dates = ["21", "22", "23", "24", "25", "26", "27"]
        
        for i  in 0..<days.count {
            
            let dateView = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: 72))
            dateView.backgroundColor = .clear
            
            
            let dateLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 48, height: 24))
            dateLabel.text = dates[i]
            dateLabel.textColor = UIColor.textLight
            dateLabel.font = UIFont(name: "Manrope-Bold", size: 24)
            dateLabel.textAlignment = .center
            
            let dayLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 48, height: 10))
            dayLabel.text = days[i]
            dayLabel.font = UIFont(name: "Manrope-SemiBold", size: 10)
            dayLabel.textColor = UIColor.textLight
            dayLabel.textAlignment = .center
            
            dateView.addSubview(dateLabel)
            dateLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([dateLabel.widthAnchor.constraint(equalToConstant: 48),
                                         dateLabel.heightAnchor.constraint(equalToConstant: 24),
                                         dateLabel.centerXAnchor.constraint(equalTo: dateView.centerXAnchor),
                                         dateLabel.bottomAnchor.constraint(equalTo: dateView.bottomAnchor, constant: -16),])
            
            dateView.addSubview(dayLabel)
            dayLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([dayLabel.widthAnchor.constraint(equalToConstant: 48),
                                         dayLabel.heightAnchor.constraint(equalToConstant: 24),
                                         dayLabel.centerXAnchor.constraint(equalTo: dateView.centerXAnchor),
                                         dayLabel.topAnchor.constraint(equalTo: dateView.topAnchor, constant: 12)])
            
            dateView.widthAnchor.constraint(equalToConstant: 48).isActive = true
            dateView.heightAnchor.constraint(equalToConstant: 72).isActive = true
            
            stackView.addArrangedSubview(dateView)
        }
        
        horiScroll.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: horiScroll.topAnchor),
                                     stackView.leadingAnchor.constraint(equalTo: horiScroll.leadingAnchor),
                                     stackView.widthAnchor.constraint(equalToConstant: 432),
                                     stackView.heightAnchor.constraint(equalToConstant: 72)])
        
        scrollView.addSubview(horiScroll)
        horiScroll.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([horiScroll.widthAnchor.constraint(equalToConstant: width),
                                     horiScroll.heightAnchor.constraint(equalToConstant: 72),
                                     horiScroll.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                                     horiScroll.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 146) ])
        
    }
    
    func addLowerHorizontalScroll() {
        
        // Hori-scroll/Date-picker
        
        let horiScroll = UIScrollView()
        horiScroll.frame = CGRect(x: 0, y: 0, width: width, height: 34)
        horiScroll.backgroundColor = .clear
        horiScroll.contentSize = CGSize(width: 428, height: 34)
        horiScroll.showsHorizontalScrollIndicator = false
        horiScroll.showsVerticalScrollIndicator = false
        
        
        // Visits/Selector/Selected
        
        let baseView = UIView(frame: CGRect(x: 0, y: 0, width: 428, height: 34))

        let buttonOne = UIButton(frame: CGRect(x: 0, y: 0, width: 107, height: 34))
        buttonOne.backgroundColor = .clear
        
        let shadows = UIView()
        shadows.frame = buttonOne.frame
        shadows.clipsToBounds = false
        buttonOne.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.094, green: 0.102, blue: 0.11, alpha: 1).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.325, green: 0.337, blue: 0.357, alpha: 1).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 12
        layer1.shadowOffset = CGSize(width: -2, height: -2)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = buttonOne.frame
        shapes.clipsToBounds = true
        buttonOne.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4
        shapes.layer.borderWidth = 1
        shapes.layer.borderColor = UIColor(red: 0.98, green: 0.706, blue: 0.275, alpha: 1).cgColor
        
        buttonOne.setTitle("Scheduled", for: .normal)
        buttonOne.titleLabel?.textColor = UIColor.textLight
        buttonOne.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)

        baseView.addSubview(buttonOne)
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.widthAnchor.constraint(equalToConstant: 107).isActive = true
        buttonOne.heightAnchor.constraint(equalToConstant: 34).isActive = true
        buttonOne.leadingAnchor.constraint(equalTo: baseView.leadingAnchor).isActive = true
        buttonOne.centerYAnchor.constraint(equalTo: baseView.centerYAnchor).isActive = true
        
        
        // Requested Button
        let buttonTwo = UIButton()
        buttonTwo.frame = CGRect(x: 0, y: 0, width: 107, height: 34)
        buttonTwo.backgroundColor = .clear
        buttonTwo.setTitle("Requested", for: .normal)
        buttonTwo.titleLabel?.textColor = UIColor.textLight
        buttonTwo.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)
        
        baseView.addSubview(buttonTwo)
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.widthAnchor.constraint(equalToConstant: 107).isActive = true
        buttonTwo.heightAnchor.constraint(equalToConstant: 34).isActive = true
        buttonTwo.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 107).isActive = true
        buttonTwo.centerYAnchor.constraint(equalTo: baseView.centerYAnchor).isActive = true
        
        
        // Conducted Button
        let buttonThree = UIButton()
        buttonThree.frame = CGRect(x: 0, y: 0, width: 107, height: 34)
        buttonThree.backgroundColor = .clear
        buttonThree.setTitle("Conducted", for: .normal)
        buttonThree.titleLabel?.textColor = UIColor.textLight
        buttonThree.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)
        
        baseView.addSubview(buttonThree)
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.widthAnchor.constraint(equalToConstant: 107).isActive = true
        buttonThree.heightAnchor.constraint(equalToConstant: 34).isActive = true
        buttonThree.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 214).isActive = true
        buttonThree.centerYAnchor.constraint(equalTo: baseView.centerYAnchor).isActive = true
        
        // Declined Button
        let buttonFour = UIButton()
        buttonFour.frame = CGRect(x: 0, y: 0, width: 107, height: 34)
        buttonFour.backgroundColor = .clear
        buttonFour.setTitle("Declined", for: .normal)
        buttonFour.titleLabel?.textColor = UIColor.textLight
        buttonFour.titleLabel?.font = UIFont(name: "Manrope-Medium", size: 14)
        
        baseView.addSubview(buttonFour)
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.widthAnchor.constraint(equalToConstant: 107).isActive = true
        buttonFour.heightAnchor.constraint(equalToConstant: 34).isActive = true
        buttonFour.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 321).isActive = true
        buttonFour.centerYAnchor.constraint(equalTo: baseView.centerYAnchor).isActive = true
        
        horiScroll.addSubview(baseView)
        baseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([baseView.topAnchor.constraint(equalTo: horiScroll.topAnchor),
                                     baseView.leadingAnchor.constraint(equalTo: horiScroll.leadingAnchor),
                                     baseView.heightAnchor.constraint(equalToConstant: 34),
                                     baseView.widthAnchor.constraint(equalToConstant: 428)])
        
        scrollView.addSubview(horiScroll)
        horiScroll.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([horiScroll.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 418),
                                     horiScroll.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     horiScroll.heightAnchor.constraint(equalToConstant: 34),
                                     horiScroll.widthAnchor.constraint(equalToConstant: width)])
        
        
    }
    
    func addYourSchedule() {
        // Your schedule
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 93, height: 14)
        view.backgroundColor = .clear
        
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 14)
        view.text = "Your schedule"
        
        
        
        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 122),
                                     view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 93),
                                     view.heightAnchor.constraint(equalToConstant: 14)])

    }
    
    func addTitleView() {
        let baseView = UIView()
        baseView.frame = CGRect(x: 0, y: 0, width: width, height: 58)
        
        // Hello, Sharica
        
        let attrOne = [NSAttributedString.Key.font : UIFont(name: "Manrope-ExtraLight", size: 14), NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        let attrTwo = [NSAttributedString.Key.font : UIFont(name: "manrope-Regular", size: 15), NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        
        let nameView = UILabel()
        nameView.frame = CGRect(x: 0, y: 0, width: 111, height: 18)
        nameView.backgroundColor = .clear
        
//        nameView.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
//        nameView.font = UIFont(name: "Manrope-Regular", size: 14)
//        nameView.text = "Hello, Sharica"
        
        let greetLabel = NSAttributedString(string: "Hello, ", attributes: attrOne)
        let noName = NSAttributedString(string: "Kimaya", attributes: attrTwo)
        
        let wholeString = NSMutableAttributedString()
        wholeString.append(greetLabel)
        wholeString.append(noName)
        
        nameView.attributedText = wholeString
        
        baseView.addSubview(nameView)
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.widthAnchor.constraint(equalToConstant: 107).isActive = true
        nameView.heightAnchor.constraint(equalToConstant: 18).isActive = true
        nameView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor).isActive = true
        nameView.topAnchor.constraint(equalTo: baseView.topAnchor).isActive = true
        
        
        // Your remote working journey is now much simpler
        
        let textView = UILabel()
        textView.frame = CGRect(x: 0, y: 0, width: 200, height: 36)
        textView.backgroundColor = .clear
        textView.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        textView.font = UIFont(name: "Manrope-Regular", size: 12)
        textView.numberOfLines = 0
        textView.lineBreakMode = .byWordWrapping
        
        textView.text = "Your remote working journey is now much simpler"
        
        baseView.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        textView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: baseView.topAnchor, constant: 22).isActive = true
        
        
        
        let nButton = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        nButton.setTitle("N", for: .normal)
        nButton.titleLabel?.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        nButton.titleLabel?.font = UIFont(name: "manRope-bold", size: 18)!
        baseView.addSubview(nButton)
        nButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([nButton.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
                                     nButton.topAnchor.constraint(equalTo: baseView.topAnchor),
                                     nButton.widthAnchor.constraint(equalToConstant: 40),
                                     nButton.heightAnchor.constraint(equalToConstant: 40)])
        
        let pButton = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        pButton.setTitle("P", for: .normal)
        pButton.titleLabel?.textColor = UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)
        pButton.titleLabel?.font = UIFont(name: "manRope-bold", size: 18)!
        baseView.addSubview(pButton)
        pButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([pButton.trailingAnchor.constraint(equalTo: baseView.trailingAnchor, constant: -56),
                                     pButton.topAnchor.constraint(equalTo: baseView.topAnchor),
                                     pButton.widthAnchor.constraint(equalToConstant: 40),
                                     pButton.heightAnchor.constraint(equalToConstant: 40)])
        
        scrollView.addSubview(baseView)
        baseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([baseView.widthAnchor.constraint(equalToConstant: width),
                                     baseView.heightAnchor.constraint(equalToConstant: 58),
                                     baseView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 32),
                                     baseView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)])
        
    }
    
    func addYourVisitsLabel() {
        // Your Visits

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 68, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 14)
        view.text = "Your Visits"
        
        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 392),
                                     view.heightAnchor.constraint(equalToConstant: 14),
                                     view.widthAnchor.constraint(equalToConstant: 68),
                                     view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24)])

    }
    
    func addYourMembershipLabel() {
        // Your Memberships

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 121, height: 14)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 14)
        view.text = "Your Memberships"
        
        
        scrollView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 676),
                                     view.widthAnchor.constraint(equalToConstant: 121),
                                     view.heightAnchor.constraint(equalToConstant: 14),
                                     view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24)])
    }
    
    func addReScheduledVisitsCard() {
        
        let view = ReScheduledVisitsCard(frame:  CGRect(x: 0, y: 0, width: width, height: 142))
//        view.frame =
        view.backgroundColor = .lightGray
        
        view.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        
        let parent = self.scrollView
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 142).isActive = true
        view.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 218).isActive = true
        
    }
    
    func addScheduledVisitsCard() {
        let view = ScheduledVisitsCard(frame: CGRect(x: 0, y: 0, width: width, height: 180))
//        view.frame = CGRect(x: 0, y: 0, width: width, height: 180)
        view.backgroundColor = .lightGray
        
        view.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        
        let parent = self.scrollView
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 180).isActive = true
        view.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 464).isActive = true
        
    }
    
    func addMembershipCard() {
        // Cards/Membership-plans

        let view = MembershipPlansCard()
        view.frame = CGRect(x: 0, y: 0, width: width , height: 327)
        view.backgroundColor = .lightGray

        view.layer.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0).cgColor

        let parent = self.scrollView
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 327).isActive = true
        view.centerXAnchor.constraint(equalTo: parent.centerXAnchor).isActive = true
        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 702).isActive = true

    }
    
    func addScrollView() {
        
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: 1080)
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
        
    }
    
}
