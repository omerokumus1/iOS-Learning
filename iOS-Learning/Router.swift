//
//  Router.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 12.04.2023.
//

import UIKit

class Router: PresenterToRouterProtocol {
        
    func showResultScreen(viewController: UIViewController?, payload: Array<String>) {
//        let  mainStoryboard =
//        (UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController?.storyboard)!
//        let resultVC = mainStoryboard.instantiateViewController(
//            withIdentifier: "ResultViewController"
//        ) as! ResultViewController
        
        let resultVC = viewController?.storyboard?
            .instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        resultVC.tl = payload[0]
        resultVC.dollar = payload[1]
        resultVC.euro = payload[2]
        viewController?.present(resultVC, animated: true)
        
        
//        let currentVC = UIApplication.shared.delegate?.window??.rootViewController
//        currentVC?.present(resultVC, animated: true)
        
    }
    
    
}
