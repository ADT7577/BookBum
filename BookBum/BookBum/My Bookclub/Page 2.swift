//
//  Page 2.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 3/26/23.
//

import SwiftUI

import UIKit

struct Item : Identifiable {
  let id = UUID()
  var urlStr:String
  var name:String
}

// Array of image url strings
let imageItems:[Item] = [
  Item(urlStr: imageArray[0], name:"Maria_O"),
  Item(urlStr: imageArray[1], name: "Fernandito22"),
  Item(urlStr: imageArray[2], name:"Victo34"),
  Item(urlStr: imageArray[3], name:"Sarah_kruger"),
  Item(urlStr: imageArray[4], name:"Clayzzz"),
  Item(urlStr: imageArray[5], name:"KatherineMarg12"),
  Item(urlStr: imageArray[6], name:"Pedro_Roth"),
  Item(urlStr: imageArray[7], name:"bbA239_00"),
  Item(urlStr: imageArray[8], name:"RaaziqLove"),
  Item(urlStr: imageArray[9], name:"ColleenLover"),
  Item(urlStr: imageArray[10],name:"KareshAbu"),
]


       struct Page_2: View {
         var body: some View {
           VStack {
             ForEach(imageItems) { item in
               HStack {
                 Image(uiImage: imageFor(string: item.urlStr))
                   .resizable()
                   .frame(width:100, height: 100)
                 Text(item.name)
                 Spacer()
               }
             }
           }
         }
       }

       struct Page_2_Previews: PreviewProvider {
           static var previews: some View {
               Page_2()
           }
       }
//Code by John Henry
