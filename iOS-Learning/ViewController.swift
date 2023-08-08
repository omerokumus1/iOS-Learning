//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let button1 = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
    
    let button2 = UIButton(frame: CGRect(
        origin: CGPoint(x: 50.0, y: 50.0),
        size: CGSize(width: 100.0, height: 50.0))
    )
    
    let button3 = UIButton(
        frame: CGRect(x: 0, y: 100, width: 100, height: 50),
        primaryAction: UIAction(
            title: "Button to Tap",
            handler: { action in
                print("clicked")
            }
        )
    )
    
    let button4 = UIButton(
        frame: CGRect(x: 0, y: 100, width: 100, height: 50),
        primaryAction: UIAction(
            title: "Title",
            subtitle: "Subtitle",
            image: .remove,
            identifier: .paste,
            discoverabilityTitle: "discoverability title",
            attributes: .disabled,
            state: .on,
            handler: { action in
                print("clicked")
        })
    )
    
    let button5 = UIButton(type: .system)
    
    let button6 = UIButton(type: .system, primaryAction: UIAction(handler: { action in
        // code to run
    }))
    
    let button7 = UIButton(configuration: .bordered())
    
    let button8 = UIButton(configuration: .plain(), primaryAction: UIAction(handler: { action in
        // code to run
    }))
    
    let b9 = UIButton(type: .system)
    let b10 = UIButton(configuration: .bordered())
    
    
    //let button9 = UIButton(configuration: UIButton.Configuration())
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        b9.frame = CGRect(x: 0, y: 150, width: 70, height: 30)
        b10.frame = CGRect(x: 0, y: 200, width: 70, height: 30)
        b9.titleLabel?.text = "b9"
        
        b10.setTitle("normal", for: .normal)
        
        b10.setTitle("highl", for: .highlighted)
        
        var config = UIButton.Configuration.bordered()
        config.title = "cTitle"
        b9.configuration = config
        
        b9.setTitle("b9", for: .normal)
        
        
        view.addSubview(button1)
        view.addSubview(button3)
        
        view.addSubview(b9)
        view.addSubview(b10)
        
        //let menu = UIMenu(options: UIMenu.Options.singleSelection, children: [UIMenuElement])
        
        
        button3.setTitleColor(.systemRed, for: .normal)
        
        //button3.backgroundColor = .brown
        
        // Do any additional setup after loading the view.
        
        //button.configuration = .bordered().
        //button.state = .
    }


}

