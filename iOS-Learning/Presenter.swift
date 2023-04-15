//
//  Presenter.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 12.04.2023.
//

import UIKit

typealias VC = PresenterToViewProtocol & UIViewController

class Presenter: PresenterProtocol {
    var interactor: PresenterToInteractorProtocol?
    
    var view: VC?
    
    var router: PresenterToRouterProtocol?
    
    init(view: VC? = nil) {
        self.view = view
        self.interactor = Interactor(presenter: self)
        self.router = Router()
    }
    
    
}

extension Presenter: ViewToPresenterProtocol {
    func convertCurrency(currency: String) {
        interactor?.convertCurrency(currency: currency)
    }
       
}

extension Presenter: InteractorToPresenterProtocol {
    func conversionSucceed(result: Array<String>) {
        router?.showResultScreen(viewController: self.view ?? nil, payload: result)
    }
    
    func conversionFailed() {
        view?.showError()
    }
}

    
