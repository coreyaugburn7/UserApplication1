//
//  UserModel.swift
//  UserApplication
//
//  Created by Corey Augburn on 7/28/22.
//

import Foundation


struct UserModel: Hashable, Codable {
    
    let results: [Result]
}

struct Result: Hashable, Codable{
    let id: Int 
    let email: String
    let firstName: String?
    let lastName: String
    let groupName: String
    let designation: String?
    
    enum CodingKeys: String, CodingKey{
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case groupName = "group_name"
        case designation
    }
    
}
