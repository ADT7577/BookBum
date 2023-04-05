//
//  UserData.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
//@codeacademy

import Foundation

@MainActor
class UserData: ObservableObject {
    @Published var users: [User] = []
    
init(){
Task{
await loadUsers()
 }
}
    
    
func loadUsers() async {
do {
    let users = try await UserFetchClient.getUsers()
    self.users = users
    }catch{
    print(error)
    }
    }
    }



