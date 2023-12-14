//
//  ObservableObjec.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 13.12.2023.
//

import Foundation

class ObservableObject<T> {
    var value: T {
        didSet {
            onValueChanged?(value)
        }
    }
    
    private var onValueChanged: ((T?) -> Void)?
    
    init(_ value: T?) {
        self.value = value
    }
        
}
