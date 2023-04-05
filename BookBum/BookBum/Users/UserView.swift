//
//  UserView.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
//

import SwiftUI

struct UserView: View {
  @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
        List(userData.users){ user in
                Text(user.fullname)
            }
          .navigationTitle("Random Users")
        }
      }
     }




struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
