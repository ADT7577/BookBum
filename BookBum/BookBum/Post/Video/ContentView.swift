//
//  ContentView.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/24/23.
// Copyright (c) 2021 Razeware LLC

import SwiftUI

struct ContentView: View {
  @StateObject private var model = ContentViewModel()

  var body: some View {
    ZStack {
      FrameView(image: model.frame)
        .edgesIgnoringSafeArea(.all)

      ErrorView(error: model.error)

      ControlView(
        comicSelected: $model.comicFilter,
        monoSelected: $model.monoFilter,
        crystalSelected: $model.crystalFilter,
        otherSelected: $model.otherFilter)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
