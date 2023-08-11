//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let slider = UISlider(frame: CGRect(x: 100, y: 100, width: 200, height: 5))
        
        //slider.backgroundColor = .red
        slider.thumbTintColor = .blue
        slider.trackRect(forBounds: slider.frame)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = true
        
        slider.addTarget(self, action: #selector(sliderFunc), for: .valueChanged)
        
        
        view.addSubview(slider)
    }
    
    @objc func sliderFunc() {
        print("sliderFunc")
    }
    
    @objc func sliderFunc2(sender: UISlider!) {
        print("sliderFunc2")
    }
    
    @objc func sliderFunc3(sender: UISlider, event: UIEvent) {
        print("sliderFunc3")
    }


}

