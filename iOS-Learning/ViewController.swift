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
    }


}

// Create a protocol to act as an image destination.
protocol ImageContainer {
    func configureImage(_ image: UIImage)
}

// Make both `UIButton` and `UIImageView` conform to the protocol.
extension UIButton: ImageContainer {
    func configureImage(_ image: UIImage) {
        setImage(image, for: .normal)
    }
}

extension UIImageView: ImageContainer {
    func configureImage(_ image: UIImage) {
        self.image = image
    }
}

// Create a new method using the protocol as a destination.
func configureImage(_ image: UIImage, into destinations: [ImageContainer]) {
    for destination in destinations {
        destination.configureImage(image)
    }
}
