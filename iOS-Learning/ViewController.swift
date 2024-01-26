//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit
import Toast

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onClickButton(_ sender: UIButton) {
        //view.makeToast("Toast Message")
        //view.makeToast("This is a piece of toast", duration: 3.0, position: .top)
        
        // toast presented with multiple options and with a completion closure
//        view.makeToast("This is a piece of toast", 
//                       duration: 2.0,
//                       point: CGPoint(x: 150.0, y: 110.0),
//                       title: "Toast Title",
//                       image: UIImage(named: "avatar-male.png"))
//        { didTap in
//            if didTap {
//                print("completion from tap")
//            } else {
//                print("completion without tap")
//            }
//        }
        
        // display toast with an activity spinner
        self.view.makeToastActivity(.center)
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
            self.view.hideToastActivity()
        }
        
        // display any view as toast
//        self.view.showToast(myView)
        
        
    }
    
}

