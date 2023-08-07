//
//  ButtonVC.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 20.04.2023.
//

import UIKit

class ButtonVC: UIViewController {

    private let vStack = UIStackView()
    
    private let button = { // Used to implement default properties
        let button = UIButton()
        button.setTitle("Cute Button", for: .normal)
//        button.backgroundColor = .cyan
//        button.behavioralStyle = .automatic
//        button.buttonType = .roundedRect
        var config = UIButton.Configuration.filled()
        
        // config -> image, indicator, subtitle, title, cornerStyle, buttonSize
        
        // **Padding
//        config.contentInsets = .init(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        config.cornerStyle = .capsule
//        config.indicator = .popup
        config.subtitle = "Subtitle"
        
        config.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.foregroundColor = UIColor.black
            outgoing.font = UIFont.boldSystemFont(ofSize: 20)
            return outgoing
        }
        
        config.image = UIImage(systemName: "chevron.right")
        config.imagePadding = 5
        config.imagePlacement = .trailing
        config.preferredSymbolConfigurationForImage
        = UIImage.SymbolConfiguration(scale: .small)
        
        button.configuration = config
        button.frame = CGRect(x: 100, y: 100, width: 120, height: 80)
        
        return button;
    }()
    
    private func getFilledPlayButton(_ text: String = "") -> UIButton {
        let button = UIButton()
        var config = UIButton.Configuration.filled()
        config.title = text
        config.image = UIImage(systemName: "play")
        config.imagePlacement = .leading
        config.imagePadding = 5
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(scale: .large)
        config.baseBackgroundColor = .blue
        // ** Padding: Buton çerçevesi büyür
        config.contentInsets = .init(top: 10, leading: 50, bottom: 10, trailing: 50)
        button.configuration = config
        
        
        return button
    }
    
    private func getBorderedPlayButton(_ text: String = "") -> UIButton {
        let button = UIButton()
        var config = UIButton.Configuration.bordered()
        config.title = text
        config.image = UIImage(systemName: "play")
        config.imagePlacement = .leading
        config.imagePadding = 5
        config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(scale: .large)
        config.baseBackgroundColor = .white
        config.contentInsets = .init(top: 10, leading: 50, bottom: 10, trailing: 50)
        button.configuration = config
        
        return button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVerticalStack()
        let filledButtons = [
            getFilledPlayButton(),
            getFilledPlayButton("Play"),
        ]
        let borderedButtons = [
            getBorderedPlayButton(),
            getBorderedPlayButton("Play")
        ]
        vStack.addArrangedSubview(getRow(children: filledButtons))
        vStack.addArrangedSubview(getRow(children: borderedButtons))
        print("Buttons added")
    }
    
    private func setUpVerticalStack() {
        vStack.axis = .vertical
        self.view.addSubview(vStack)
        vStack.alignment = .leading
        vStack.distribution = .equalSpacing
        vStack.spacing = 5
        vStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            vStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            vStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            vStack.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ])
        vStack.layer.borderColor = .init(red: 1, green: 0, blue: 0, alpha: 1)
        vStack.layer.borderWidth = 2
        vStack.layoutMargins = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        vStack.isLayoutMarginsRelativeArrangement = true
    }
    private func getRow(children: [UIView]) -> UIStackView{
        let hStack = UIStackView()
        hStack.axis = .horizontal
        hStack.alignment = .center
        hStack.distribution = .equalCentering
        hStack.spacing = 5
        children.forEach { view in
            hStack.addArrangedSubview(view)
        }
        hStack.layer.borderColor = .init(red: 0, green: 1, blue: 0, alpha: 1)
        hStack.layer.borderWidth = 2
        
        return hStack
    }

}
