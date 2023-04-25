//
//  controlView.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/24/23.
//  Copyright (c) 2021 Razeware LLC

import SwiftUI

struct ControlView: View {
  @Binding var comicSelected: Bool
  @Binding var monoSelected: Bool
  @Binding var crystalSelected: Bool
  @Binding var otherSelected: Bool

  var body: some View {
    VStack {
      Spacer()

      HStack(spacing: 12) {
        ToggleButton(selected: $comicSelected, label: "Comic")
        ToggleButton(selected: $monoSelected, label: "Mono")
        ToggleButton(selected: $crystalSelected, label: "Crystal")
        ToggleButton(selected: $otherSelected, label: "Other")
      }
    }
  }
}

struct ControlView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.black
        .edgesIgnoringSafeArea(.all)

      ControlView(
        comicSelected: .constant(false),
        monoSelected: .constant(true),
        crystalSelected: .constant(true),
        otherSelected: .constant(true))
    }
  }
}
