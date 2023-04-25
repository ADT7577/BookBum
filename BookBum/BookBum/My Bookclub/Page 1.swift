//
//  Url.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 3/26/23.
//

import SwiftUI

// Array of images from RandomUser

let imageArray = [
"https://randomuser.me/api/portraits/women/11.jpg",
"https://randomuser.me/api/portraits/men/6.jpg",
"https://randomuser.me/api/portraits/men/86.jpg",
"https://randomuser.me/api/portraits/women/89.jpg",
"https://randomuser.me/api/portraits/women/9.jpg",
"https://randomuser.me/api/portraits/women/5.jpg",
"https://randomuser.me/api/portraits/men/38.jpg",
"https://randomuser.me/api/portraits/men/16.jpg",
"https://randomuser.me/api/portraits/men/25.jpg",
"https://randomuser.me/api/portraits/women/46.jpg",
"https://randomuser.me/api/portraits/women/15.jpg",
]

// Read in an image from the array of url strings
func imageFor( index: Int) -> UIImage {
  let urlStr = imageArray[index % imageArray.count]
  return imageFor(string: urlStr)
}

// Read in an image from a url string
func imageFor(string str: String) -> UIImage {
  let url = URL(string: str)
  let imgData = try? Data(contentsOf: url!)
  let uiImage = UIImage(data:imgData!)
  return uiImage!
}

struct Page_1: View {
  var body: some View {
    VStack {
      ForEach(0 ..< 8) { index in
        Image(uiImage: imageFor(index: index))
          .resizable()
          .frame(width:100, height: 100)
      }
    }
  }
}

struct Page_1_Previews: PreviewProvider {
  static var previews: some View {
  Page_1()
  }
}

//Code from John Henry

