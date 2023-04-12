//
//  Interactor.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 12.04.2023.
//

import Foundation

class Interactor: PresenterToInteractorProtocol {
    private let DOLLAR = 20
    private let EURO = 25
    var presenter: InteractorToPresenterProtocol?
    
    init(presenter: InteractorToPresenterProtocol) {
        self.presenter = presenter
    }
    
    func convertCurrency(currency: String) {
        let toDollar = Int(currency)! * DOLLAR
        let toEuro = Int(currency)! * EURO
        presenter?.conversionSucceed(
            result: [currency, String(toDollar), String(toEuro)])
    }
    
    
}
