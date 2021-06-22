//
//  QRCodeReaderView.swift
//  StyleWork
//
//  Created by Kapil Dev on 23/04/21.
//  Copyright © 2021 Stylework. All rights reserved.
//

import UIKit
import WebKit

class QRCodeReaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .clear
        
        let image = WKWebView(frame: self.frame)
        
                
//        image.contentMode = .scaleAspectFit
//        image.sizeToFit()
//        image.autoresizesSubviews = true
        image.backgroundColor = .clear
        
        let path = Bundle.main.path(forResource: "QR Code", ofType: "svg")!
        if path != "" {
            let fileURL: URL = URL(fileURLWithPath: path)
            let req = URLRequest(url: fileURL)
            image.load(req)
            
            
//            let contentSize = image.scrollView.contentSize
//            let webViewSize = image.bounds.size
//            let scaleFactor = webViewSize.width / contentSize.width
//
//            for _ in 1...9 {
//                print(contentSize)
//                print(webViewSize)
//                print(scaleFactor)
//                print("aloha")
//            }
//
            
//            // scale the svg appropriately
//            image.scrollView.minimumZoomScale = scaleFactor
//            image.scrollView.maximumZoomScale = scaleFactor
//            image.scrollView.zoomScale = scaleFactor
//

            self.addSubview(image)
            image.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([image.topAnchor.constraint(equalTo: self.topAnchor),
                                         image.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                         image.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                         image.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
