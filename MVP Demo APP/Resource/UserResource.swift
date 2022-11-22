//
//  UserResource.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import Foundation

struct UserResource {
    
    func getUserBy(request: UserRequest, response: @escaping ((UserResponse?)->())) {
        
        let urlWithRequest = "\(ApiEndPoint.userDetails)?page=\(request.page)"
        let apiUrl = URL(string: urlWithRequest)!
        
        let httpUtility = HttpUtility()
        httpUtility.getApiData(requestUrl: apiUrl, resultType: UserResponse.self) { result in
            response(result)
        }
    }
}
