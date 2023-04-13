//
//  Checkbox.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

@IBDesignable // To see rendered on storyboard
class Checkbox: UIControl {

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
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        imageView.image = UIImage(systemName: "checkmark.square.fill")
        imageView.contentMode = .scaleAspectFit
        self.imageView = imageView
        backgroundColor = .clear
        
        addTarget(self,
                  action: #selector(touchUpInsideImageView),
                  for: .touchUpInside)
    }
    
    @objc private func touchUpInsideImageView() {
        checked = !checked
        sendActions(for: .valueChanged)
    }
    
    
}
