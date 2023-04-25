//
//  Login.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/3/23.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
     
    var body:some View{
        Button(title){
            isOn.toggle()
        }
    }
}





struct Login: View {
    @State var userName = ""
    @State var passWord = ""
    @State private var rememberMe = false
    
    var body: some View {
        
            NavigationView {
                VStack{
                    Form {
                        TextField("Username", text: $userName)
                        TextField("Password", text: $passWord)
                        Button("Forgot Password") { }
                        Toggle ("Remember Me", isOn: $rememberMe)
                    }
    
                                .navigationTitle("Login")
                                .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }









struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
