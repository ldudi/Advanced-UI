//
//  ScanQRAfterBookingVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 24/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ScanQRAfterBookingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addCross(addSuperView: self.view)
        addStackView()
        addBottomLabel()
        addBottomButton()
        
    }
    
    func addStackView() {
        
        let stackView = UIStackView(frame: self.view.frame)
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 30
        stackView.backgroundColor = .clear
        
        stackView.addArrangedSubview(addTitleLabel())
        stackView.addArrangedSubview(addScanView())
        stackView.addArrangedSubview(addORSaparator())
        stackView.addArrangedSubview(addotpView())
        
        
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 77),
                                     stackView.heightAnchor.constraint(equalToConstant: 500)])
        
    }
    
    func addORSaparator() -> UIView {
        
        let width = UIScreen.main.bounds.width - 73
        let orView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 12))
        orView.backgroundColor = .clear
        // OR
        
        let or = UILabel()
        or.frame = CGRect(x: 0, y: 0, width: 17, height: 12)
        or.backgroundColor = .clear

        or.textColor = UIColor(red: 0.396, green: 0.411, blue: 0.442, alpha: 1)
        or.font = UIFont(name: "Manrope-SemiBold", size: 12)
        or.text = "OR"
        
        orView.addSubview(or)
        or.translatesAutoresizingMaskIntoConstraints = false
        or.widthAnchor.constraint(equalToConstant: 17).isActive = true
        or.heightAnchor.constraint(equalToConstant: 12).isActive = true
        or.leadingAnchor.constraint(equalTo: orView.leadingAnchor).isActive = true
        or.centerYAnchor.constraint(equalTo: orView.centerYAnchor).isActive = true
        
        
        // Line 122
        
        let line = UILabel()
        line.frame = CGRect(x: 0, y: 0, width: width, height: 2)
        line.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1)

        orView.addSubview(line)
        line.translatesAutoresizingMaskIntoConstraints = false
        line.widthAnchor.constraint(equalToConstant: width).isActive = true
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.leadingAnchor.constraint(equalTo: orView.leadingAnchor).isActive = true
        line.centerYAnchor.constraint(equalTo: orView.centerYAnchor).isActive = true
        
        orView.widthAnchor.constraint(equalToConstant: width).isActive = true
        orView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        return orView
    }
    
    func addBottomButton() {
        // Contact tech support

        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 146, height: 14)
        button.backgroundColor = .clear
        button.setTitle("Contact tech support", for: .normal)
        button.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)
       
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 146).isActive = true
        button.heightAnchor.constraint(equalToConstant: 14).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true

    }
    
    func addBottomLabel() {
        // Trouble logging in?

        let bLabel = UILabel()
        bLabel.frame = CGRect(x: 0, y: 0, width: 106, height: 12)
        bLabel.backgroundColor = .clear

        bLabel.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        bLabel.font = UIFont(name: "Manrope-Regular", size: 12)
        bLabel.text = "Trouble logging in?"
        bLabel.textAlignment = .center
        
        self.view.addSubview(bLabel)
        bLabel.translatesAutoresizingMaskIntoConstraints = false
        bLabel.widthAnchor.constraint(equalToConstant: 106).isActive = true
        bLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        bLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -72).isActive = true

    }
    
    func addotpView() -> UIView {
        
        let width = UIScreen.main.bounds.width - 74
        let baseView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 82))
        baseView.backgroundColor = .clear
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 133, height: 14)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Manrope-SemiBold", size: 14)
        label.text = "Use your booking ID"

        baseView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 133).isActive = true
        label.heightAnchor.constraint(equalToConstant: 14).isActive = true
        label.leadingAnchor.constraint(equalTo: baseView.leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: baseView.topAnchor).isActive = true
        
        
        let otpView = DigitsTF(frame: CGRect(x: 0, y: 0, width: width, height: 52))
        
        baseView.addSubview(otpView)
        otpView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([otpView.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
                                     otpView.widthAnchor.constraint(equalToConstant: width),
                                     otpView.heightAnchor.constraint(equalToConstant: 52),
                                     otpView.centerXAnchor.constraint(equalTo: baseView.centerXAnchor)])
        
        baseView.widthAnchor.constraint(equalToConstant: width).isActive = true
        baseView.heightAnchor.constraint(equalToConstant: 82).isActive = true
        
        return baseView
    }
    
    func addScanView() -> UIView {
        
        let sView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 64, height: 286))
        sView.backgroundColor = .clear
        
        let scanView = QRCodeReaderView(frame: CGRect(x: 0, y: 0, width: 311, height: 286))
        sView.addSubview(scanView)
        scanView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([scanView.topAnchor.constraint(equalTo: sView.topAnchor),
                                     scanView.heightAnchor.constraint(equalToConstant: 286),
                                     scanView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
                                     scanView.centerXAnchor.constraint(equalTo: sView.centerXAnchor)])
        
        sView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64).isActive = true
        sView.heightAnchor.constraint(equalToConstant: 286).isActive = true
        
        return sView
    }
    
    func addTitleLabel() -> UIView {
        // Scan your QR
        let width = UIScreen.main.bounds.width - 64
        let aView = UIView()
        aView.frame = CGRect(x: 0, y: 0, width: width, height: 42)
        aView.backgroundColor = .clear
        
        let title = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: 128, height: 20)
        title.backgroundColor = .clear
        title.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        title.font = UIFont(name: "Manrope-SemiBold", size: 20)
        title.text = "Scan your QR"

        aView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.widthAnchor.constraint(equalToConstant: 128).isActive = true
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.leadingAnchor.constraint(equalTo: aView.leadingAnchor).isActive = true
        title.topAnchor.constraint(equalTo: aView.topAnchor).isActive = true
        
        
        // Ask the operator to scan the QR for check- in.

        let subTitle = UILabel()
        subTitle.frame = CGRect(x: 0, y: 0, width: 292, height: 14)
        subTitle.backgroundColor = .clear

        subTitle.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        subTitle.font = UIFont(name: "Manrope-Regular", size: 14)
        subTitle.text = "Ask the operator to scan the QR for check- in."

        aView.addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.widthAnchor.constraint(equalToConstant: 292).isActive = true
        subTitle.heightAnchor.constraint(equalToConstant: 14).isActive = true
        subTitle.leadingAnchor.constraint(equalTo: aView.leadingAnchor).isActive = true
        subTitle.bottomAnchor.constraint(equalTo: aView.bottomAnchor).isActive = true
        
        aView.heightAnchor.constraint(equalToConstant: 42).isActive = true
        aView.widthAnchor.constraint(equalToConstant: width).isActive = true
        
        return aView
    }

    func addCross(addSuperView superView: UIView) {
        let crossbtn = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        crossbtn.setImage(UIImage(named: "Cancel"), for: .normal)
        superView.addSubview(crossbtn)
        crossbtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([crossbtn.heightAnchor.constraint(equalToConstant: 32),
                                     crossbtn.widthAnchor.constraint(equalToConstant: 32),
                                     crossbtn.topAnchor.constraint(equalTo: superView.topAnchor, constant: 40),
                                     crossbtn.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -24)])
    }
}
