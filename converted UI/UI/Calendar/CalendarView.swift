//
//  CalendarView.swift
//  StyleWork
//
//  Created by Kapil Dev on 30/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CalendarView: UIView, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var items: [Int] = [Int].init(repeating: 42, count: 35)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addDays()
        addCollectionView()
        
    }
    
    func addDays() {
        let day1 = dayLabel()
        let day2 = dayLabel()
        let day3 = dayLabel()
        let day4 = dayLabel()
        let day5 = dayLabel()
        let day6 = dayLabel()
        let day7 = dayLabel()
        day1.text = "SUN"
        day2.text = "MON"
        day3.text = "TUE"
        day4.text = "WED"
        day5.text = "THU"
        day6.text = "FRI"
        day7.text = "SAT"
        
        
        let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 20))
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
//        stackView.spacing = 30
        stackView.backgroundColor = .clear
        
        stackView.addArrangedSubview(day1)
        stackView.addArrangedSubview(day2)
        stackView.addArrangedSubview(day3)
        stackView.addArrangedSubview(day4)
        stackView.addArrangedSubview(day5)
        stackView.addArrangedSubview(day6)
        stackView.addArrangedSubview(day7)
        
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([stackView.widthAnchor.constraint(equalToConstant: self.frame.width),
                                     stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     stackView.topAnchor.constraint(equalTo: self.topAnchor),
                                     stackView.heightAnchor.constraint(equalToConstant: 20)])
    }

    func dayLabel() -> UILabel {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: self.frame.width / 7, height: 10)
        label.font = UIFont(name: "Manrope-Regular", size: 10)
        label.textColor = UIColor.textAlternateLightGrey
        label.textAlignment = .center
        return label
    }
    
    func addCollectionView() {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 288), collectionViewLayout: layout)
        collectionView.register(CalendarViewCell.self, forCellWithReuseIdentifier: "calendarCell")
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        
        self.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 22),
                                     collectionView.heightAnchor.constraint(equalToConstant: 288),
                                     collectionView.widthAnchor.constraint(equalToConstant: self.frame.width),
                                     collectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarCell", for: indexPath) as! CalendarViewCell
        cell.backgroundColor = UIColor.clear
        
        if indexPath.item > 3 && indexPath.item < 34{
            cell.dateLabel.text = String(indexPath.item - 3)
        }
        
        if indexPath.item == 10 || indexPath.item == 11 || indexPath.item == 12 {
            cell.dot.image = UIImage(named: "Requested")
            cell.addOneDot()
            
        }
        
        if indexPath.item == 16 {
            cell.addTopLabel()
            cell.addBottomLabel()
            cell.dot.image = UIImage(named: "Requested")
            cell.addOneDot()
        }
        
        if indexPath.item == 17 {
            cell.addTwoDots()
            cell.addBottomLabel()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = self.frame.width / 7
        let cellHeight = collectionView.bounds.height / 5
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
