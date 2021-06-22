//
//  NavigationViewController.swift
//  StyleWork
//
//  Created by Kapil Dev on 04/05/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit
import MaterialComponents.MDCBottomNavigationBar

class NavigationViewController: UITabBarController {
    
    let bottomNavBar = MDCBottomNavigationBar()
    let width = UIScreen.main.bounds.width - 48
    private var selectedTab = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addNavigation()
        self.view.backgroundColor = .clear
        bottomNavBar.delegate = self
        
        self.viewControllers = [HomeViewController(), BookingIDVC(), CalendarTappedDateVC(), CalendarDefaultVC(), ]
    }
    
    override func viewDidLayoutSubviews() {
        self.tabBar.removeFromSuperview()
    }
    
    
    func addNavigation() {
        bottomNavBar.frame = CGRect(x: 0, y: 0, width: width, height: 60)
        self.view.addSubview(bottomNavBar)
        
        bottomNavBar.backgroundColor = UIColor(red: 0.214, green: 0.226, blue: 0.25, alpha: 1)
        bottomNavBar.layer.cornerRadius = 30
        bottomNavBar.clipsToBounds = true
        
        bottomNavBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([bottomNavBar.widthAnchor.constraint(equalToConstant: width),
                                     bottomNavBar.heightAnchor.constraint(equalToConstant: 60),
                                     bottomNavBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     bottomNavBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -45)])
        
        // border gradient
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: bottomNavBar.frame.size)
        gradient.colors = [UIColor(red: 32/255, green: 132/255, blue: 125/255, alpha: 1).cgColor,
                           UIColor(red: 54/255, green: 58/255, blue: 64/255, alpha: 0.1).cgColor,
                           UIColor(red: 32/255, green: 132/255, blue: 125/255, alpha: 1).cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 1)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        let shape = CAShapeLayer()
        shape.lineWidth = 1.5
        shape.path = UIBezierPath(roundedRect: bottomNavBar.bounds.insetBy(dx: 1.5,
                                                                            dy: 1.5), cornerRadius: 30).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        bottomNavBar.layer.addSublayer(gradient)

        bottomNavBar.selectedItemTintColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1)
        bottomNavBar.selectedItemTitleColor = UIColor(red: 0.125, green: 0.517, blue: 0.488, alpha: 1)
        bottomNavBar.titleVisibility = .always

        bottomNavBar.itemTitleFont = UIFont(name: "Manrope-Medium", size: 10)!
        bottomNavBar.unselectedItemTintColor =  UIColor(red: 0.93, green: 0.938, blue: 0.954, alpha: 1)

        let homeItem = UITabBarItem(
            title: "Home",
            image: UIImage(named: "home"),
            tag: 0)
        let messagesItem = UITabBarItem(
            title: "Membership",
            image: UIImage(named: "membership"),
            tag: 1)
        let readerItem = UITabBarItem(
            title: "Vistis",
            image: UIImage(named: "visits"),
            tag: 2)
        let birthdayItem = UITabBarItem(
            title: "Calendar",
            image: UIImage(named: "calendar"),
            tag: 3)
        bottomNavBar.items = [homeItem, messagesItem, readerItem, birthdayItem]
        bottomNavBar.selectedItem = homeItem
        
    }
    
    
}

extension NavigationViewController: MDCBottomNavigationBarDelegate {
    func bottomNavigationBar(_ bottomNavigationBar: MDCBottomNavigationBar, didSelect item: UITabBarItem) {
        self.selectedViewController = self.viewControllers![item.tag]
    }
}
