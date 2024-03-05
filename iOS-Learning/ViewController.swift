//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hello World"
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 1
        
        
        let margin = UIEdgeInsets(
            top: 20,
            left: 30,
            bottom: 40,
            right: 50
        )

        
        /// # Padding
        // Works
        label.layoutMarginsGuide.widthAnchor.constraint(
            equalToConstant: label.frame.size.width + 30
        ).isActive = true
        label.textAlignment = .center
        
        
        // Does not work
        let frame = CGRect(
            origin: label.frame.origin,
            size: CGSize(
                width: label.frame.width+30,
                height: 25
            )
        )
        label.frame = frame
        
        
        // Does not work
        label.frame.inset(by: margin)
        
        // Does not work
        label.bounds.inset(by: margin)
        
        // Does not work
        label.layer.frame.inset(by: margin)
        
        // Does not work
        label.frame.size.height = label.intrinsicContentSize.height+20
        label.frame.size.width = label.intrinsicContentSize.width+40
        
        // Does not work
        label.directionalLayoutMargins = .init(
            top: 20,
            leading: 30,
            bottom: 40,
            trailing: 50
        )
        
        // Does not work
        label.layoutMargins = margin
        
        
        /// # UIButton Insets
        let spacing: CGFloat = 20.0
        
//        button.imageEdgeInsets = UIEdgeInsets(
//            top: 0,
//            left: 0,
//            bottom: 0,
//            right: spacing
//        )
//        
//        button.titleEdgeInsets = UIEdgeInsets(
//            top: 0,
//            left: spacing,
//            bottom: 0,
//            right: 0
//        )
//        
//        button.contentEdgeInsets = UIEdgeInsets(
//            top: 0,
//            left: spacing,
//            bottom: 0,
//            right: spacing
//        )
        
        
        
        /// # layoutMargins
        
//        self.view.layoutMargins = UIEdgeInsets(
//            top: self.view.layoutMargins.top,
//            left: 64,
//            bottom: self.view.layoutMargins.bottom,
//            right: 64
//        )
//        
//        self.view.directionalLayoutMargins = NSDirectionalEdgeInsets(
//            top: self.view.directionalLayoutMargins.top,
//            leading: 16,
//            bottom: self.view.directionalLayoutMargins.bottom,
//            trailing: 64
//        )
        
        
    }


}

