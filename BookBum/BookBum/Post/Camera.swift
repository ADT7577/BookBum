//
//  Camera.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/25/23.
//

import SwiftUI

struct Camera: View {
    var body: some View {
        NavigationView{
            Form {
                Section{
                    NavigationLink (destination: Photo()) {
                        Text("Photo")
                    }
                    NavigationLink(destination: ContentView()){
                        Text("Video")
                    }
                    
                }
                .navigationTitle("BookBum")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    struct Camera_Previews: PreviewProvider {
        static var previews: some View {
            Camera()
        }
    }
}
