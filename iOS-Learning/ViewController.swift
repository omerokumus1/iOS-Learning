//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { timer in
            self.view.subviews.first { $0.isFirstResponder }?.resignFirstResponder()
        }
        
        
    }
    
    


}

