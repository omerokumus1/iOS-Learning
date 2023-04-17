//
//  Router.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 15.04.2023.
//

import UIKit


class Router {
    func startSecondScreen() {
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        
        var currentVC = keyWindow?.rootViewController
        while let presentedViewController = currentVC?.presentedViewController {
            currentVC = presentedViewController
        }
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
                        as! SecondViewController
        secondVC.labelText = "SecondVC"
        currentVC?.present(secondVC, animated: true)
    
        
    }
}
