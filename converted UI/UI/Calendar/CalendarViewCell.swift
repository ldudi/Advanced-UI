//
//  CalendarViewCell.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CalendarViewCell: UICollectionViewCell {
    
    let dateLabel = UILabel()
    var dot = UIImageView()
    var dotOne = UIImageView()
    var dotTwo = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addDateLabel()
    }
    
    func addOneDot() {
        dot.frame = CGRect(x: 0, y: 0, width: 4, height: 4)
        self.addSubview(dot)
        dot.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([dot.widthAnchor.constraint(equalToConstant: 4),
                                     dot.heightAnchor.constraint(equalToConstant: 4),
                                     dot.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     dot.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3)])
    }
    
    func addTwoDots() {
        dotOne.frame = CGRect(x: 0, y: 0, width: 4, height: 4)
        dotTwo.frame = CGRect(x: 0, y: 0, width: 4, height: 4)
        dotOne.image = UIImage(named: "Cancelled")
        dotTwo.image = UIImage(named: "Requested")
        let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 10, height: 4))
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 2
        stackView.addArrangedSubview(dotOne)
        stackView.addArrangedSubview(dotTwo)
        NSLayoutConstraint.activate([dotOne.widthAnchor.constraint(equalToConstant: 4),
                                     dotOne.heightAnchor.constraint(equalToConstant: 4),
                                     dotTwo.widthAnchor.constraint(equalToConstant: 4),
                                     dotTwo.heightAnchor.constraint(equalToConstant: 4)])
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.widthAnchor.constraint(equalToConstant: 10),
                                     stackView.heightAnchor.constraint(equalToConstant: 4),
                                     stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3)])
    }
    
    func addDateLabel() {
        dateLabel.frame = CGRect(x: 0, y: 0, width: 25, height: 20)
        dateLabel.font = UIFont(name: "Manrope-Regular", size: 20)
        dateLabel.textColor = UIColor.textAlternateLightGrey
        dateLabel.textAlignment = .center
        self.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([dateLabel.widthAnchor.constraint(equalToConstant: 25),
                                     dateLabel.heightAnchor.constraint(equalToConstant: 20),
                                     dateLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
                                     dateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
    }
    
    func addBottomLabel() {
        let bottomLabel = upperLabel()
        self.addSubview(bottomLabel)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([bottomLabel.widthAnchor.constraint(equalToConstant: 36),
                                     bottomLabel.heightAnchor.constraint(equalToConstant: 12),
                                     bottomLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -33),
                                     bottomLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
    }
    
    func addTopLabel() {
        let topLabel = upperLabel()
        self.addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([topLabel.widthAnchor.constraint(equalToConstant: 36),
                                     topLabel.heightAnchor.constraint(equalToConstant: 12),
                                     topLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -47),
                                     topLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
    }
    
    func upperLabel() -> UILabel {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 36, height: 12)
        label.font = UIFont(name: "Manrope-Regular", size: 8)
        label.textColor = UIColor.textAlternateLightGrey
        label.textAlignment = .center
        label.text = "SW Golf.."
        label.layer.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1).cgColor
        label.layer.cornerRadius = 2
        label.layer.borderWidth = 0.5
        label.layer.borderColor = UIColor.textDarkGrey.cgColor
        return label
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
}
