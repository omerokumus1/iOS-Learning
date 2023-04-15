//
//  Protocols.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 12.04.2023.
//

import Foundation
import UIKit

/*
    1. Yöntem: Her bir haberleşme için ayrı protocol yaz
    2. Yöntem: Her katman için 1 tane protocol yaz
 */

// 1. Yöntem

// View Protocol
protocol ViewProtocol {
    // View bu protocol'ü implement edecek.
    // Bu sebeple Presenter referansına sahip olmalı.
    var presenter: ViewToPresenterProtocol? {get set}
}

// Presenter Protocol
protocol PresenterProtocol {
    // Presenter bu protocol'ü implement edecek.
    
    // Bu sebeple;
    // 1. Interactor referansına sahip olmalı
    var interactor: PresenterToInteractorProtocol? {get set}
    
    // 2. View referansına sahip olmalı
    var view: VC? { get set }
    
    // 3. Router referansına sahip olmalı
    var router: PresenterToRouterProtocol? {get set}
}

// View'ın haberleşebileceği presenter
protocol ViewToPresenterProtocol {
    // Presenter, View'a ne sunmalı?
    func convertCurrency(currency: String)
}

// Presenter'ın haberleşebileceği View
protocol PresenterToViewProtocol {
    // View bu protocol'ü implement edecek. Bu sebeple Presenter
    // referansına sahip olmalı
    var presenter: ViewToPresenterProtocol? {get set}
    
    // View, Presenter'a ne sunmalı?
    func showError()
}

// Presenter'ın haberleşebileceği Interactor
protocol PresenterToInteractorProtocol {
    // Interactor bu protocol'ü implement edecek. Bu sebeple
    // Presenter referansına sahip olmalı
    var presenter: InteractorToPresenterProtocol? {get set}
    
    // Interactor, Presenter'a ne sunmalı?
    func convertCurrency(currency: String)
}

// Interactor'ın haberleşebileceği Presenter
protocol InteractorToPresenterProtocol {
    // Presenter, Interactor'a ne sunmalı?
    func conversionSucceed(result: Array<String>)
    func conversionFailed()
}

// Presenter'ın haberleşeceği Router
protocol PresenterToRouterProtocol {
    // Router, Presenter'a ne sunmalı?
    func showResultScreen(viewController: UIViewController?, payload: Array<String>)
}

