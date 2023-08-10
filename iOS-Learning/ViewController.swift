//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var iv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        iv.isHidden = true
        
        
        let iv2 = UIImageView(image: UIImage(named: "mobile"))
        iv2.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
        
        iv.tintColor = .red
        
        let img1 = UIImage(named: "mobile")!
        let img2 = UIImage(named: "rocky")!
        let imgs = [img1, img2, img1, img2]
        
        iv2.animationImages = imgs
        iv2.animationDuration = Double(imgs.count)*1.0
        //iv2.startAnimating()
        
        
        view.addSubview(iv2)
    }


}

