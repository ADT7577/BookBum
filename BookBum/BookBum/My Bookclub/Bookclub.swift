//
//  Bookclub.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/4/23.
//

import SwiftUI

struct Bookclub: View {
    let friends = [ "Maria_O","Fernandito22","Victo34"]
    @State private var selectedFriend = "Maria_0"
    var body: some View {
        NavigationView{
            Form{
                Picker("Select", selection: $selectedFriend) {
                    ForEach(friends, id: \.self){
                        Text($0)
                    }
                }
            }
        }
    }
}

struct Bookclub_Previews: PreviewProvider {
    static var previews: some View {
        Bookclub()
    }
}
