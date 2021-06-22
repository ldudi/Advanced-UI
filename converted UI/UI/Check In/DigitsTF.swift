//
//  DigitsTF.swift
//  StyleWork
//
//  Created by Kapil Dev on 24/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class DigitsTF: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(frame: self.frame)
        let tfone = singleDigitTF()
        let tftwo = singleDigitTF()
        let tfthree = singleDigitTF()
        let tffour = singleDigitTF()
        let tffive = singleDigitTF()
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.backgroundColor = .clear
        
        stackView.addArrangedSubview(tfone)
        stackView.addArrangedSubview(tftwo)
        stackView.addArrangedSubview(tfthree)
        stackView.addArrangedSubview(tffour)
        stackView.addArrangedSubview(tffive)
        
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     stackView.topAnchor.constraint(equalTo: self.topAnchor),
                                     stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
        
    }
    
    func singleDigitTF() -> UIView {
        
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 44, height: 52)
        view.backgroundColor = .clear
        
        view.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        view.layer.borderColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1).cgColor
        view.layer.borderWidth = 1
        view.widthAnchor.constraint(equalToConstant: 44).isActive = true
        view.heightAnchor.constraint(equalToConstant: 52).isActive = true
        
        return view
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
