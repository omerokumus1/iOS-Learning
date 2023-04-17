//
//  SecondViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 15.04.2023.
//

import UIKit

class SecondViewController: UIViewController {

    var labelText = ""
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelText
    }
    
    @IBAction func prevClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
