//
//  UserDefaults+Extention.swift
//  iOS-Learning
//
//  Created by Ömer Faruk Okumuş on 13.12.2023.
//

import Foundation

extension UserDefaults {
    private enum Keys: String {
        case switchIsOn
        case signedInUser
    }
    
    var switchIsOn: Bool {
        get {
            self.bool(forKey: Keys.switchIsOn.rawValue)
        }
        set {
            self.setValue(newValue, forKey: Keys.switchIsOn.rawValue)
        }
    }
    
    
    var signedInUser: User? {
        get {
            if let data = self.object(forKey: Keys.signedInUser.rawValue) as? Data {
                let user = try? JSONDecoder().decode(User.self, from: data)
                return user
            }
            return nil
        }
        
        set {
            if newValue == nil {
                self.removeObject(forKey: Keys.signedInUser.rawValue)
            }
            
            let data = try? JSONEncoder().encode(newValue)
            self.setValue(data, forKey: Keys.signedInUser.rawValue)
            
        }
    }
}
