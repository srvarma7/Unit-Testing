//
//  SignupFormModelValidator.swift
//  Unit Testing
//
//  Created by Sai Raghu Varma Kallepalli on 14/1/21.
//

import Foundation

class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var flag = false
        
        if firstName.count >= SignupFormConstants.firstNameMinLenght && firstName.count <= SignupFormConstants.firstNameMaxLenght {
            flag = true
        }
        
        return flag
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var flag = false
        
        if lastName.count >= SignupFormConstants.lastNameMinLenght && lastName.count <= SignupFormConstants.lastNameMaxLenght {
            flag = true
        }
        
        return flag
    }
    
    func isPasswordValid(password: String) -> Bool {
        var flag = false
        
        if password.count >= SignupFormConstants.passwordMinLenght {
            flag = true
        }
        
        return flag
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return password == repeatPassword
    }
}
