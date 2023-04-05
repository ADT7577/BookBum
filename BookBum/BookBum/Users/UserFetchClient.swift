//
//  UserFetchingClient.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
// © CodeAcademy

import Foundation




struct UserFetchClient {
    static private let url = URL(string: "https://randomuser.me/api/?results=15&format=pretty")!
    
static func getUsers() async throws -> [User] {
      async let (data, _) = URLSession.shared.data(from: url)
    let response = try await JSONDecoder().decode(Response.self,
    from: data)
    return response.users
      }
    }



