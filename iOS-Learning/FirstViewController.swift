//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class FirstViewController: UIViewController {

    private let router = Router()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func nextClicked(_ sender: UIButton) {
//        let secondVC = UIStoryboard.instantiateViewController(
//            storyboard!
//        )(withIdentifier: "SecondViewController") as! SecondViewController
                
//        let secondVC = storyboard?.instantiateViewController(
//            withIdentifier: "SecondViewController"
//        ) as! SecondViewController
//        self.present(secondVC, animated: true)

        router.startSecondScreen()
    }
    
    
    
}

