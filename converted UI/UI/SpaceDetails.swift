//
//  SpaceDetails.swift
//  StyleWork
//
//  Created by Kapil Dev on 07/05/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit


class LocationLabel: UIView {
    
    let locationLogo = UIImageView()
    let locationString = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        locationLogo.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        locationLogo.image = UIImage(named: "LocationCorporate")
        
        locationString.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        locationString.font = UIFont(name: "Manrope-Medium", size: 10)
        locationString.textColor = UIColor.textLight
        locationString.numberOfLines = 0
        locationString.lineBreakMode = .byWordWrapping
        locationString.text = "Vyapar Kendra Road, Sector 40, Gurugram"
        
        self.addSubview(locationLogo)
        locationLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([locationLogo.widthAnchor.constraint(equalToConstant: 10),
                                     locationLogo.heightAnchor.constraint(equalToConstant: 10),
                                     locationLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     locationLogo.topAnchor.constraint(equalTo: self.topAnchor)])
        
        self.addSubview(locationString)
        locationString.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([locationString.widthAnchor.constraint(equalToConstant: self.frame.width - 16),
                                     locationString.heightAnchor.constraint(equalToConstant: self.frame.height),
                                     locationString.leadingAnchor.constraint(equalTo: locationLogo.trailingAnchor, constant: 6),
                                     locationString.topAnchor.constraint(equalTo: self.topAnchor)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class TimingLabel: UIView {
    
    var timingLogo = UIImageView()
    var timingString = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        timingLogo.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        timingLogo.image = UIImage(named: "Flexible Time")
        
        timingString.frame = CGRect.zero
        timingString.font = UIFont(name: "Manrope-Medium", size: 10)
        timingString.textColor = UIColor.textLight
        timingString.numberOfLines = 0
        timingString.lineBreakMode = .byWordWrapping
        timingString.text = "Open 24/7"
        
        self.addSubview(timingLogo)
        timingLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([timingLogo.widthAnchor.constraint(equalToConstant: 10),
                                     timingLogo.heightAnchor.constraint(equalToConstant: 10),
                                     timingLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     timingLogo.topAnchor.constraint(equalTo: self.topAnchor)])
        
        self.addSubview(timingString)
        timingString.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([timingString.widthAnchor.constraint(equalToConstant: self.frame.width - 16),
                                     timingString.heightAnchor.constraint(equalToConstant: self.frame.height),
                                     timingString.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     timingString.topAnchor.constraint(equalTo: self.topAnchor)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class NearestLocation: UIView {
    
    let NearestLocationLogo = UIImageView()
    let NearestLocationString = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        NearestLocationLogo.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        NearestLocationLogo.image = UIImage(named: "Metro")
        
        NearestLocationString.frame = CGRect.zero
        NearestLocationString.font = UIFont(name: "Manrope-Medium", size: 10)
        NearestLocationString.textColor = UIColor.textLight
        NearestLocationString.numberOfLines = 0
        NearestLocationString.lineBreakMode = .byWordWrapping
        NearestLocationString.text = "Sec 54 Rapid Metro (2 kms)"
        
        self.addSubview(NearestLocationLogo)
        NearestLocationLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([NearestLocationLogo.widthAnchor.constraint(equalToConstant: 10),
                                     NearestLocationLogo.heightAnchor.constraint(equalToConstant: 10),
                                     NearestLocationLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     NearestLocationLogo.topAnchor.constraint(equalTo: self.topAnchor)])
        
        self.addSubview(NearestLocationString)
        NearestLocationString.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([NearestLocationString.widthAnchor.constraint(equalToConstant: self.frame.width - 16),
                                     NearestLocationString.heightAnchor.constraint(equalToConstant: self.frame.height),
                                     NearestLocationString.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     NearestLocationString.topAnchor.constraint(equalTo: self.topAnchor)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
