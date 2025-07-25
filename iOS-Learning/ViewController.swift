//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Creating Basic View Hierarchy
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //
    //        // Create a main view
    //        let mainView = UIView()
    //        mainView.backgroundColor = .red
    //        mainView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    //        // Setting center property updates the origin of the rectangle in the frame property appropriately.
    //        mainView.center = view.center
    //
    //        // Create a label
    //        let label = UILabel()
    //        label.text = "Hello, World!"
    //        label.textColor = .white
    //        label.textAlignment = .center
    //        label.frame = CGRect(x: 20, y: 20, width: 160, height: 40)
    //
    //        // Create a button
    //        let button = UIButton(type: .system)
    //        button.setTitle("Tap Me", for: .normal)
    //        button.frame = CGRect(x: 20, y: 80, width: 160, height: 40)
    //
    //        // Add the label and button as subviews of the main view
    //        mainView.addSubview(label)
    //        mainView.addSubview(button)
    //
    //        // Add the main view as a subview of the view controller's view
    //        view.addSubview(mainView)
    //    }
    
    // Modifying the View Hierarchy Programmatically
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a main view
        let mainView = UIView()
        mainView.backgroundColor = .red
        mainView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        mainView.center = view.center
        
        // Create a label
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = .white
        label.textAlignment = .center
        label.frame = CGRect(x: 20, y: 20, width: 160, height: 40)
        
        // Create a button
        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.frame = CGRect(x: 20, y: 80, width: 160, height: 40)
        
        // Add the label and button as subviews of the main view
        mainView.addSubview(label)
        mainView.addSubview(button)
        
        // Add the main view as a subview of the view controller's view
        view.addSubview(mainView)
        
        // Remove the label from the main view
//        DispatchQueue.main
//            .asyncAfter(
//                deadline: .now() + 2,
//                execute: {
//                    label.removeFromSuperview()
//                }
//            )
        
        // Insert the label back into the main view, but below the button
        DispatchQueue.main
            .asyncAfter(
                deadline: .now() + 1,
                execute: {
                    mainView.insertSubview(label, belowSubview: button) //!!! This does not put it below button
                }
            )
    }
    
}

