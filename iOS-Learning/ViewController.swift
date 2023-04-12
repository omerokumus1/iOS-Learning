//
//  ViewController.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 11.04.2023.
//

import UIKit

class ViewController: UIViewController, ViewProtocol {

    var presenter: ViewToPresenterProtocol?
    
    @IBOutlet weak var currencyLabel: UITextField!
    @IBOutlet weak var convertBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
    }

    @IBAction func convertClicked(_ sender: UIButton) {
        presenter?.convertCurrency(currency: currencyLabel.text!)
    }
    
}


extension ViewController: PresenterToViewProtocol {
    func showError() {
        print("error occured")
    }
    
    
}

