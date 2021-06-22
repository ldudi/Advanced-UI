//
//  LoginVerificationView.swift
//  StyleWork
//
//  Created by Kapil Dev on 08/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

protocol TimerDelegate {
    func updateTimer(button: UIButton)
}

protocol HomeModalDelegate {
    func addHomeCard()
}

class LoginVerificationView: UIView {
    
    var delegate: TimerDelegate!
    var homeDelegate: HomeModalDelegate!
    var remainingTime: Int = 30
    var timerLabel = UILabel()
    var tfOne = UITextField()
    var tfTwo = UITextField()
    var tfThree = UITextField()
    var tfFour = UITextField()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        addTopLabel()
        addTopSubLabel()
        addNumberLabel()
        addVarificationLabel()
        addFourOTPBoxes()
        addAutoReadingLabel()
        addSendOTPAgainLabel()
        addSendOTPAgainButton()
        addinLabel()
        addTimerLabel()
        addBottomLabel()
        addBottomButton()
        addMostBottomLabel()
        addMostBottomButton()
        addFour()
        addTwo()
        addNine()
        ellipse()
        addPencilIcon()
        addSignUpButton()
//        otpMethod()
    }
//
//    func otpMethod() {
//        tfOne.addTarget(self, action: #selector(self.textFieldDidChanged(textField:)), for: UIControl.Event.editingChanged)
//        tfOne.addTarget(self, action: #selector(self.textFieldDidChanged(textField:)), for: UIControl.Event.allEvents)
//        tfTwo.addTarget(self, action: #selector(self.textFieldDidChanged(textField:)), for: UIControl.Event.editingChanged)
//        tfThree.addTarget(self, action: #selector(self.textFieldDidChanged(textField:)), for: UIControl.Event.editingChanged)
//        tfFour.addTarget(self, action: #selector(self.textFieldDidChanged(textField:)), for: UIControl.Event.editingChanged)
//    }
//
//    @objc func textFieldDidChanged(textField:UITextField)  {
//        let text = textField.text
//        if text?.utf16.count == 1 {
//
//            switch textField{
//
//            case tfOne:
//                tfTwo.becomeFirstResponder()
//
//            case tfTwo:
//                tfThree.becomeFirstResponder()
//
//            case tfThree:
//                tfFour.becomeFirstResponder()
//
//            default:
//                self.endEditing(true)
//            }
//
//        } else if text?.utf16.count == 0 {
//            switch textField{
//
//            case tfOne:
//                tfOne.becomeFirstResponder()
//                line52(pos: 1)
//
//            case tfTwo:
//                tfOne.becomeFirstResponder()
//
//            case tfThree:
//                tfTwo.becomeFirstResponder()
//
//            case tfFour:
//                tfThree.becomeFirstResponder()
//
//            default: break
//
//            }
//        }
//    }
    
    func addTopLabel() {
        // Verify your contact number to create an account

        let view = UILabel()
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 50)
        view.backgroundColor = .clear
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-SemiBold", size: 18)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.text = "Verify your contact number to create an account"
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 81),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
                                     view.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    func addTopSubLabel() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 212, height: 12)
        view.backgroundColor = .clear
        view.textColor = UIColor(red: 0.576, green: 0.604, blue: 0.663, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        view.text = "Please enter the code sent via SMS to "
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 143),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23),
                                     view.widthAnchor.constraint(equalToConstant: 212),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addNumberLabel() {
        // 9999999999
        
        let view = UIButton()
        view.frame = CGRect(x: 0, y: 0, width: 88, height: 14)
        view.backgroundColor = .clear
        view.setTitle("9999999999", for: .normal)
        view.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        view.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 142),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 239),
                                     view.widthAnchor.constraint(equalToConstant: 88),
                                     view.heightAnchor.constraint(equalToConstant: 14)])
    }
    
    func addVarificationLabel() {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 150, height: 12)
        view.backgroundColor = .clear
        
        view.text = "Enter the verification code"
        view.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 215),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 150),
                                     view.heightAnchor.constraint(equalToConstant: 12)])
    }
    
    func addOTPLabel() {
        // Rectangle 21

        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 48, height: 56)
        view.backgroundColor = .clear
        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)
        
        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 243),
                                     view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
                                     view.widthAnchor.constraint(equalToConstant: 48),
                                     view.heightAnchor.constraint(equalToConstant: 56)])
    }
    
    func addFourOTPBoxes() {
        let box1 = addBaseOTPBox()
        let box2 = addBaseOTPBox()
        let box3 = addBaseOTPBox()
        let box4 = addBaseOTPBox()
        
        self.addSubview(box1)
        box1.translatesAutoresizingMaskIntoConstraints = false
        box1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        
        self.addSubview(box1)
        box2.translatesAutoresizingMaskIntoConstraints = false
        box2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 96).isActive = true
        
        self.addSubview(box1)
        box3.translatesAutoresizingMaskIntoConstraints = false
        box3.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 168).isActive = true
        
        self.addSubview(box1)
        box4.translatesAutoresizingMaskIntoConstraints = false
        box4.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 240).isActive = true
        
    }
    
    func addBaseOTPBox() -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 48, height: 56)
        view.backgroundColor = .clear
        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)
        
        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.45).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 2, height: 2)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)
        
        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 4)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.15).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 16
        layer1.shadowOffset = CGSize(width: -4, height: -4)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)

        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer2 = CALayer()
        layer2.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer2.bounds = shapes.bounds
        layer2.position = shapes.center
        shapes.layer.addSublayer(layer2)

        shapes.layer.cornerRadius = 4
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 243),
                                     view.widthAnchor.constraint(equalToConstant: 48),
                                     view.heightAnchor.constraint(equalToConstant: 56)])
        return view
    }
    
    func addAutoReadingLabel() {
        // Auto reading OTP

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 98, height: 12)
        view.backgroundColor = .clear
        view.text = "Auto reading OTP"
        view.textColor = UIColor(red: 0.308, green: 0.322, blue: 0.35, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 98).isActive = true
        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 329).isActive = true
    }
    
    func addSendOTPAgainLabel() {
        // Didn’t receive the code?

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 136, height: 12)
        view.backgroundColor = .clear
        view.text = "Didn’t receive the code?"
        view.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 136).isActive = true
        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 365).isActive = true
    }
    
    func addSendOTPAgainButton() {
        
        let view = UIButton()
        view.frame = CGRect(x: 0, y: 0, width: 89, height: 14)
        view.backgroundColor = .clear
        view.setTitle("Resend Code", for: .normal)
        view.setTitleColor(UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1), for: .normal)
        view.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 89).isActive = true
        view.heightAnchor.constraint(equalToConstant: 14).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 387).isActive = true
    }
    
    func addinLabel() {
        // in
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 11, height: 12)
        view.backgroundColor = .clear
        view.text = "in"
        view.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 11).isActive = true
        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 116).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 389).isActive = true
    }
    
    func addTimerLabel() {
        // 00:30
        

//        let view = UILabel()
        timerLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 14)
        timerLabel.backgroundColor = .clear
        timerLabel.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        timerLabel.font = UIFont(name: "Manrope-SemiBold", size: 14)
        
        let yourTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
        yourTimer.fire()
        
        self.addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        timerLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        timerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 133).isActive = true
        timerLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 386).isActive = true
    }
    
    @objc func updateTime() {
        print(remainingTime)
        if remainingTime != 0 { remainingTime -= 1 }
        timerLabel.text = "00:\(String(format: "%02d", remainingTime))"
    }
    
    func addSignUpButton() {
        
        let view = ElmButton()
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width - 48, height: 48)
        view.setTitle("Verify and Sign Up", for: .normal)
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: self.frame.width - 48).isActive = true
        view.heightAnchor.constraint(equalToConstant: 48).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 424).isActive = true
        
        self.bringSubviewToFront(view)
        
        view.addTarget(self, action: #selector(addHomeModelView), for: .touchUpInside)
    }
    
    @objc func addHomeModelView() {
        print("its a day")
//        self.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        let view = UIView(frame: UIScreen.main.bounds)
        self.addSubview(view)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        let homeBase = HomeModalView()
        homeBase.center = self.center
        self.addSubview(homeBase)
    }
    
    func addBottomLabel() {
        // Taking too long?

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 93, height: 12)
        view.backgroundColor = .clear

        view.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        view.text = "Taking too long?"
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 93).isActive = true
        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 496).isActive = true
    }
    
    func addBottomButton() {
        
        let view = UIButton()
        
        view.frame = CGRect(x: 0, y: 0, width: 89, height: 14)
        view.backgroundColor = .clear
        view.setTitle("Get it Via Call", for: .normal)
        view.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        view.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 89).isActive = true
        view.heightAnchor.constraint(equalToConstant: 14).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 122).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 495).isActive = true

    }
    
    func addMostBottomLabel() {
        
        // Having trouble logging in?
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 147, height: 17)
        view.backgroundColor = .clear
        view.text = "Having trouble logging in?"
        view.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        view.font = UIFont(name: "Manrope-Medium", size: 12)
        view.baselineAdjustment = .alignCenters
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 147).isActive = true
        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 62).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -62).isActive = true
    }
    
    func addMostBottomButton() {
        // Try other methods
        let view = UIButton()
        view.frame = CGRect(x: 0, y: 0, width: 106, height: 17)
        view.backgroundColor = .clear
        view.setTitle("Try other methods", for: .normal)
        view.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        view.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 12)
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 106).isActive = true
        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 209).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -62).isActive = true
    }
    
    func line52(pos: Int) {
        // Line 52
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 0, height: 32)
        view.backgroundColor = .clear
        
        let stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = view.center
        view.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1).cgColor
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 32).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 255).isActive = true
        
                
        switch pos {
        case 1:
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 48).isActive = true
        case 2:
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 120).isActive = true
        case 3:
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 192).isActive = true
        case 4:
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 264).isActive = true
        default:
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 264).isActive = true
        }
        
    }
    
    func addFour() {
        // 4
        
        tfThree.frame = CGRect(x: 0, y: 0, width: 8, height: 14)
        tfThree.backgroundColor = .clear
        tfThree.isUserInteractionEnabled = false
        tfThree.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        tfThree.font = UIFont(name: "Manrope-Medium", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        
        tfThree.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)])
        
        self.addSubview(tfThree)
        tfThree.translatesAutoresizingMaskIntoConstraints = false
        tfThree.widthAnchor.constraint(equalToConstant: 8).isActive = true
        tfThree.heightAnchor.constraint(equalToConstant: 14).isActive = true
        tfThree.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 190).isActive = true
        tfThree.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 264).isActive = true
        tfThree.tintColor = .clear
        
    }
    
    func addNine() {
        // 4

        tfOne.frame = CGRect(x: 0, y: 0, width: 8, height: 14)
        tfOne.backgroundColor = .clear
        tfOne.isUserInteractionEnabled = false
        tfOne.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        tfOne.font = UIFont(name: "Manrope-Medium", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        tfOne.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)])

        self.addSubview(tfOne)
        tfOne.translatesAutoresizingMaskIntoConstraints = false
        tfOne.widthAnchor.constraint(equalToConstant: 8).isActive = true
        tfOne.heightAnchor.constraint(equalToConstant: 14).isActive = true
        tfOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 44).isActive = true
        tfOne.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 264).isActive = true
        
        tfOne.tintColor = .clear
        tfOne.becomeFirstResponder()
        
    }
    
    func addTwo() {
        // 4

        tfTwo.frame = CGRect(x: 0, y: 0, width: 8, height: 14)
        tfTwo.backgroundColor = .clear
        tfTwo.isUserInteractionEnabled = false
        tfTwo.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        tfTwo.font = UIFont(name: "Manrope-Medium", size: 14)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        
        tfTwo.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)])
        
        self.addSubview(tfTwo)
        tfTwo.translatesAutoresizingMaskIntoConstraints = false
        tfTwo.widthAnchor.constraint(equalToConstant: 8).isActive = true
        tfTwo.heightAnchor.constraint(equalToConstant: 14).isActive = true
        tfTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 116).isActive = true
        tfTwo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 264).isActive = true
        
        tfTwo.tintColor = .clear
    }
    
    func ellipse() {
        // Ellipse 10

        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        view.backgroundColor = .clear
        
        let shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.093, green: 0.102, blue: 0.108, alpha: 0.5).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 16
        layer0.shadowOffset = CGSize(width: 4, height: 4)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        let shadowPath1 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer1 = CALayer()
        layer1.shadowPath = shadowPath1.cgPath
        layer1.shadowColor = UIColor(red: 0.739, green: 0.771, blue: 0.796, alpha: 0.1).cgColor
        layer1.shadowOpacity = 1
        layer1.shadowRadius = 6
        layer1.shadowOffset = CGSize(width: -2, height: -2)
        layer1.bounds = shadows.bounds
        layer1.position = shadows.center
        shadows.layer.addSublayer(layer1)
        
        let shadowPath2 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer2 = CALayer()
        layer2.shadowPath = shadowPath2.cgPath
        layer2.shadowColor = UIColor(red: 0.111, green: 0.118, blue: 0.129, alpha: 0.2).cgColor
        layer2.shadowOpacity = 1
        layer2.shadowRadius = 6
        layer2.shadowOffset = CGSize(width: 1, height: 1)
        layer2.compositingFilter = "multiplyBlendMode"
        layer2.bounds = shadows.bounds
        layer2.position = shadows.center
        shadows.layer.addSublayer(layer2)
        
        let shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)
        
        let layer3 = CALayer()
        layer3.backgroundColor = UIColor(red: 0.176, green: 0.192, blue: 0.212, alpha: 1).cgColor
        layer3.cornerRadius = 8
        layer3.bounds = shapes.bounds
        layer3.position = shapes.center
        shapes.layer.addSublayer(layer3)
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 16).isActive = true
        view.heightAnchor.constraint(equalToConstant: 16).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 329).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 140).isActive = true
        
    }
    
    func addPencilIcon() {
        // Vector
        
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 8, height: 8)
        view.backgroundColor = .clear
        view.image = UIImage(named: "edit")
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 8).isActive = true
        view.heightAnchor.constraint(equalToConstant: 8).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 333).isActive = true
        view.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 144).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
