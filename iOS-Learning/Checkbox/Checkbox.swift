//
//  Checkbox.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

@IBDesignable // To see rendered on storyboard
class Checkbox: UIView {

    // Create weak reference to UIViews in another view
    private weak var imageView: UIImageView!
    
    private var image: UIImage {
        checked ? UIImage(systemName: "checkmark.square.fill")! : UIImage(systemName: "square")!
    }
    
    @IBInspectable // To see this property inside the Attribute Inspector
    public var checked = false {
        didSet {
            imageView.image = image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        
    }
    
    
}
