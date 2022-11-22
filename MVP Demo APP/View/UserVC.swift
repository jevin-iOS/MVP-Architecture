//
//  ViewController.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import UIKit

class UserVC: UIViewController {

    let userPresenter = UserPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPresenter.userPresentable = self
        userPresenter.getUserBy(Index: 0)
    }


}

extension UserVC: UserPresentable {
 

    
    func receiveUserResponse(response: UserResponse?) {
        
    }
    
    func didFailUserRespons(validation: UserValidationResult) {
        self.displayAlert(title: validation.title, message: validation.erorMessage)
    }

}

