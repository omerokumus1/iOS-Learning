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
        let noRecordView = NoRecordView(
            frame: CGRect(x: 20.0, y: 100.0, width: 300.0, height: 300.0)
        )
        
        //self.view.addSubview(noRecordView)
    }


}

