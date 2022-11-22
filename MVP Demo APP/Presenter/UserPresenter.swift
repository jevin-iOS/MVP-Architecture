//
//  UserPresenter.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import Foundation

protocol UserPresentable {
    
    func receiveUserResponse(response: UserResponse?)
    func didFailUserRespons(validation: UserValidationResult)
}

class UserPresenter {
    
    var userPresentable: UserPresentable?
    var userData: [Users] = []
    
    func getUserBy(Index index: Int) {
        
        if index > 0 && index < 3 {
            let userRequest = UserRequest(page: index)
            
            let userResource = UserResource()
            userResource.getUserBy(request: userRequest) { userResponse in
                
            }
        } else {
            userPresentable?.didFailUserRespons(validation: UserValidationResult(title: ErrorMessage.title.rawValue, erorMessage: ErrorMessage.validationMessgae.rawValue))
            
        }
        
    }
}
