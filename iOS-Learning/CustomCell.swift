//
//  CustomCell.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 25.02.2024.
//

import UIKit

class CustomCell: UICollectionViewCell {
    static let identifier = "CustomCell"
    
    // IMPORTANT: Connect this outlets to CustomCell, not File's Owner
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var view: UIView!
    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Right margin of 20, you can set this via storyboard as well
        
        // Does not work
        /*
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                stackView.trailingAnchor.constraint(
                    equalTo: contentView.trailingAnchor,
                    constant: 20
                )
            ]
        )
        */
    }
    
    func configure(text: String, color: UIColor) {
        label.text = text
        view.backgroundColor = color
    }

}
