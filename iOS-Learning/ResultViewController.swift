//
//  ResultViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 12.04.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var tlLabel: UILabel!
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
    var tl: String?, dollar: String?, euro: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tl)
        print(dollar)
        print(euroLabel)
        tlLabel.text = tl
        dollarLabel.text = dollar
        euroLabel.text = euro
    }
    
}
