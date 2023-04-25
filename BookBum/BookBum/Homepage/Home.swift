//
//  Home.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 3/26/23.
//

import SwiftUI

struct Home: View {
    var body: some View{
        NavigationStack{
            VStack{
                NavigationLink(value: "A") {
                    Text("Notifications")
                }
                NavigationLink (destination: Page_4()){
                    Text("My BookClub")
                }
                NavigationLink(destination: Post1()){
                    Text ("Post")
                }
                NavigationLink(value: "D"){
                    Text("Library")
                }
                NavigationLink(value: "E"){
                    Text("Settings")
                }
            }
        }
        
        }
    }


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
