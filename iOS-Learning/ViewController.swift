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
        
        let datePicker = UIDatePicker(frame: CGRect(x: 10, y: 100,
                                              width: 100, height: 100))
        
        
        
        
        
        view.addSubview(datePicker)
    }

}


