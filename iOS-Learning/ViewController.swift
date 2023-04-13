//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noRecordView: NoRecordView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let noRecordView = NoRecordView(
//            frame: CGRect(x: 20.0, y: 100.0, width: 300.0, height: 300.0)
//        )
        
        //self.view.addSubview(noRecordView)
        
        let checkbox = Checkbox(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        view.addSubview(checkbox)
    }
    
    @IBAction
    private func checkChanged(_ sender: Checkbox) {
        print("checkChanged")
    }

    @IBAction func checkClicked(_ sender: Checkbox) {
        print("checkClicked")
    }
    
}

