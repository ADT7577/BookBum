//
//  Home2.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
//

import SwiftUI

struct Home2: View {
    var body: some View {
        NavigationView{
            Form {
                Section{
                    NavigationLink (destination: Page_4()) {
                        Text("BookClub")
                    }
                    NavigationLink(destination: Post1()){
                        Text("Post")
                    }
                    NavigationLink(destination: Library1()){
                        Text("Library")
                    }
                    
                    Text("Settings")
                }
            }
            .navigationTitle("BookBum")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    struct Home2_Previews: PreviewProvider {
        static var previews: some View {
            Home2()
        }
    }
}
