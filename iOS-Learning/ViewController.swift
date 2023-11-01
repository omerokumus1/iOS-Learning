//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let uiSwitch = UISwitch(frame: CGRect(x: view.center.x-50, y: 100,
                                              width: 100, height: 100))
        
        uiSwitch.thumbTintColor = UIColor.systemBlue
        
        
        
        view.addSubview(uiSwitch)
    }

}


