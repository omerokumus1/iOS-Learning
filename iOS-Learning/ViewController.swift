//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label = UILabel(frame: CGRect(x: view.center.x-50, y: 80, width: 100, height: 40))
        label.backgroundColor = .gray
        label.layer.cornerRadius = 12.0
        label.layer.masksToBounds = true
        label.text = "0"
        
        let stepper = UIStepper(
            frame: CGRect(x: view.center.x-50, y: 140, width: 100, height: 50)
            
        )
        
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        stepper.wraps = true
        stepper.addTarget(self, action: #selector(stepperFunc), for: .valueChanged)
        
        
        
        view.addSubview(stepper)
        view.addSubview(label)
    }
    
    @objc func stepperFunc(_ sender: UIStepper) {
        label.text = String(Int(sender.value))
    }


}

