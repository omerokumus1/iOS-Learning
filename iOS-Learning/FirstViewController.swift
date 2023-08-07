//
//  FirstViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class FirstViewController: UIViewController {

    private let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNextButton()
        setupMyView()
        setupSecondView()
    }
    
    private let myView = UIView()
    private func setupMyView() {
        view.addSubview(myView)
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myView.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }
    
    private let secondView = UIView()
    private func setupSecondView() {
        myView.addSubview(secondView)
        secondView.backgroundColor = .blue
        secondView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondView.leadingAnchor.constraint(
                equalTo: myView.leadingAnchor, constant: 20),
            secondView.trailingAnchor.constraint(
                equalTo: myView.trailingAnchor, constant: -20),
            secondView.topAnchor.constraint(
                equalTo: myView.topAnchor),
            secondView.heightAnchor.constraint(
                equalTo: myView.heightAnchor, multiplier: 0.5),
        ])
    }

    private func setupNextButton() {
        // Firstly!!
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        
        // use Auto Layout
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }

}

