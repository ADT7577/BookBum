//
//  User.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
//© Code Academy

import Foundation

struct Response: Decodable {
    let users: [User]
    
    enum CodingKeys: CodingKey {
        case users
    }
}


struct User: Decodable, Identifiable {
    let id: String
    let name: Name
    
    var fullName: String{
        name.title + "." + name.first + " " + name.last
    }
    
    
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(Name.self, forKey: .name)
        let loginInfo = try values.nestedContainer(keyedBy: LoginInfoCodingKeys.self,
                                                   forKey: .login)
        id = try loginInfo.decode (String.self, forKey: .uuid)
    }
    
    enum CodingKeys: String, CodingKey {
        case login
        case name
    }
    
    enum LoginInfoCodingKey; String, CodingKey {
    case uuid
    }
}
    
struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}

