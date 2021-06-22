//
//  CalendarDefaultVC.swift
//  StyleWork
//
//  Created by Kapil Dev on 29/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit

class CalendarDefaultVC: UIViewController {
    
    
    let scrollView = UIScrollView()
    
    let homeView = UIView()
    
    let width = UIScreen.main.bounds.width - 48
    
    var items: [Int] = [Int].init(repeating: 42, count: 35)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseLayer = BaseGradLayer(layer: view.frame)
        baseLayer.frame = view.bounds
        view.layer.addSublayer(baseLayer)
        
        
        addScrollView()
        addTitle()
        addArrows()
        addDatePicker()
        addControl()
        
        addLineSaparator()
        addUpcomingVisitsLabel()
        
        addVisitsCard()
        
        addOverlay()
        
        addScheduleButton()
        
        addCalendarView()
    }
    
    
    
    func addCalendarView() {
        let calendar = CalendarView(frame: CGRect(x: 0, y: 0, width: width, height: 310))
        scrollView.addSubview(calendar)
        calendar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([calendar.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 222),
                                     calendar.widthAnchor.constraint(equalToConstant: width),
                                     calendar.heightAnchor.constraint(equalToConstant: 310),
                                     calendar.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)])
    }
    
    func addScheduleButton() {
        let schedulebtn = ElmButtonRounded(frame: CGRect(x: 0, y: 0, width: 212, height: 46))
        schedulebtn.setTitle("Schedule your visits", for: .normal)
        
        view.addSubview(schedulebtn)
        schedulebtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([schedulebtn.widthAnchor.constraint(equalToConstant: 212),
                                     schedulebtn.heightAnchor.constraint(equalToConstant: 46),
                                     schedulebtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     schedulebtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -134)])
        schedulebtn.isUserInteractionEnabled = true
        schedulebtn.clipsToBounds = false
        schedulebtn.addTarget(self, action: #selector(self.goToScanQRMainVC(sender:)), for: .allTouchEvents)
        
        
    }
    
    @objc func goToScanQRMainVC(sender: UIButton) {
        let vc = ScanQRMainVC()
        self.navigationController?.pushViewController(vc, animated: true)
        print("apurav")
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
    
    func addVisitsCard() {
        let visitsCard = ScheduledVisitsCalendar(frame: CGRect(x: 0, y: 0, width: width, height: 186))
        scrollView.addSubview(visitsCard)
        visitsCard.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([visitsCard.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 632),
                                     visitsCard.heightAnchor.constraint(equalToConstant: 186),
                                     visitsCard.widthAnchor.constraint(equalToConstant: width),
                                     visitsCard.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)])
    }
    
    func addUpcomingVisitsLabel() {
        // Upcoming Visits

        let subLabel = UILabel()
        subLabel.frame = CGRect(x: 0, y: 0, width: 122, height: 20)
        subLabel.backgroundColor = .clear
        subLabel.textColor = UIColor.textAlternateLightGrey
        subLabel.font = UIFont(name: "Manrope-Medium", size: 16)
        subLabel.text = "Upcoming Visits"

        scrollView.addSubview(subLabel)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.widthAnchor.constraint(equalToConstant: 122).isActive = true
        subLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        subLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        subLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 600).isActive = true

    }
    
    func addLineSaparator() {
        // Line 121

        let line = UILabel()
        line.frame = CGRect(x: 0, y: 0, width: width, height: 0)
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
        line.heightAnchor.constraint(equalToConstant: 0).isActive = true
        line.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 24).isActive = true
        line.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 555).isActive = true

    }
    
    func addControl() {
        let width = UIScreen.main.bounds.width - 64
        let segmentItems = ["Weekly", "Monthly", "Quarterly"]
        let control = UISegmentedControl(items: segmentItems)
        control.frame = CGRect(x: 0, y: 0, width: width, height: 34)
        control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        
        control.selectedSegmentTintColor = UIColor.primaryGreen
        control.backgroundColor = UIColor(red: 0.147, green: 0.156, blue: 0.175, alpha: 1)
        let font: [NSAttributedString.Key : Any] = [NSAttributedString.Key.font : UIFont(name: "Manrope-Medium", size: 14)!,
                                                    NSAttributedString.Key.foregroundColor : UIColor(red: 0.988, green: 0.988, blue: 0.988, alpha: 1)]
        control.setTitleTextAttributes(font, for: .normal)
        
        control.selectedSegmentIndex = 1
        scrollView.addSubview(control)
        control.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([control.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 154),
                                     control.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 32),
                                     control.heightAnchor.constraint(equalToConstant: 34),
                                     control.widthAnchor.constraint(equalToConstant: width)])
    }
    
    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
            case 0:
                
                break
            case 1:
                
                break
        case 2:
            break
            default:
                break
       }
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
    }
    
    func addArrows() {
        // left arrow
        let leftButton = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        leftButton.setImage(UIImage(named: "Left-scroll"), for: .normal)
        scrollView.addSubview(leftButton)
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([leftButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 87),
                                     leftButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -76),
                                     leftButton.widthAnchor.constraint(equalToConstant: 32),
                                     leftButton.heightAnchor.constraint(equalToConstant: 32)])
        
        // right arrow
        let rightButton = EllipticalButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        rightButton.setImage(UIImage(named: "Right-scroll"), for: .normal)
        scrollView.addSubview(rightButton)
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([rightButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 87),
                                     rightButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
                                     rightButton.widthAnchor.constraint(equalToConstant: 32),
                                     rightButton.heightAnchor.constraint(equalToConstant: 32)])
        
    }
    
    func addScrollView() {
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: 1000)
        view.addSubview(scrollView)
        
        scrollView.delaysContentTouches = false
        scrollView.canCancelContentTouches = true
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
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
    
}
