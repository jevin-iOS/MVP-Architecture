//
//  UserDataSource.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import Foundation
import UIKit


class UserDataSource: NSObject, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
