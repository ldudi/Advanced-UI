//
//  ScanQRMainVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 23/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class ScanQRMainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.layer)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        addCross()
        addBottomText()
        addBottomButton()
        
        addScanLabel()
        
        addScanView()
        
    }
    
    func addScanView() {
        let scanView = QRCodeReaderView(frame: CGRect(x: 0, y: 0, width: 311, height: 286))
        view.addSubview(scanView)
        scanView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([scanView.topAnchor.constraint(equalTo: view.topAnchor, constant: 158),
                                     scanView.heightAnchor.constraint(equalToConstant: 286),
                                     scanView.widthAnchor.constraint(equalToConstant: 311),
                                     scanView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    
    func addScanLabel() {
        
        // Scan your QR

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 128, height: 20)
        label.backgroundColor = .clear

        label.textColor = UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Manrope-SemiBold", size: 20)
        label.text = "Scan your QR"
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 128).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 492).isActive = true
        
        
        // Ask the operator to scan the QR for check- in.
        
        let subLabel = UILabel()
        subLabel.frame = CGRect(x: 0, y: 0, width: 292, height: 14)
        subLabel.backgroundColor = .clear
        
        subLabel.textColor = UIColor(red: 0.577, green: 0.605, blue: 0.663, alpha: 1)
        subLabel.font = UIFont(name: "Manrope-Regular", size: 14)
        subLabel.text = "Ask the operator to scan the QR for check- in."
        
        view.addSubview(subLabel)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.widthAnchor.constraint(equalToConstant: 292).isActive = true
        subLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 520).isActive = true

    }
    
    func addBottomButton() {
        
        // Check-in Manually instead

        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 178, height: 14)
        button.backgroundColor = .clear
        
        button.setTitle("Check-in Manually instead", for: .normal)
        button.titleLabel?.font = UIFont(name: "Manrope-SemiBold", size: 14)
        button.setTitleColor(UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1), for: .normal)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 178).isActive = true
        button.heightAnchor.constraint(equalToConstant: 14).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -50).isActive = true

    }
    
    func addBottomText() {
        // Having trouble scanning?

        let text = UILabel()
        text.frame = CGRect(x: 0, y: 0, width: 142, height: 12)
        text.backgroundColor = .clear

        text.textColor = UIColor(red: 0.714, green: 0.737, blue: 0.779, alpha: 1)
        text.font = UIFont(name: "Manrope-Regular", size: 12)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73

        // Line height: 12 pt
        // (identical to box height)

        text.attributedText = NSMutableAttributedString(string: "Having trouble scanning?", attributes: [NSAttributedString.Key.kern: 0.06, NSAttributedString.Key.paragraphStyle: paragraphStyle])

        view.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.widthAnchor.constraint(equalToConstant: 142).isActive = true
        text.heightAnchor.constraint(equalToConstant: 12).isActive = true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        text.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -72).isActive = true

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
