//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.isEnabled = false
        textField
            .addTarget(
                self,
                action: #selector(ViewController.textFieldDidChange(_:)),
                for: .editingChanged)
    }
    
    /*@objc func textFieldDidChange(_ textField: UITextField) {
     textField.text = textField.text?.uppercased()
     
     } */
    
    /*@objc func textFieldDidChange(_ textField: UITextField) {
        button.isEnabled = (textField.text?.count ?? 0) > 6
    } */
    
    /*@objc func textFieldDidChange(_ textField: UITextField) {
        textView.isHidden = (textField.text?.count ?? 0) > 6
    } */
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
    }
    
    
    
    @IBAction func onTextChanged(_ sender: UITextField) {
        
    }
    
}

