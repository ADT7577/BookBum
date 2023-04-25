//
//  ContentViewModel.swift
//  BookBum
//
//  Created by Alexsa Tolentino on 4/24/23.
//  Copyright (c) 2021 Razeware LLC

import CoreImage

class ContentViewModel: ObservableObject {
  @Published var error: Error?
  @Published var frame: CGImage?

  var comicFilter = false
  var monoFilter = false
  var crystalFilter = false
  var otherFilter = false

  private let context = CIContext()

  private let cameraManager = CameraManager.shared
  private let frameManager = FrameManager.shared

  init() {
    setupSubscriptions()
  }

  func setupSubscriptions() {
    // swiftlint:disable:next array_init
    cameraManager.$error
      .receive(on: RunLoop.main)
      .map { $0 }
      .assign(to: &$error)

    frameManager.$current
      .receive(on: RunLoop.main)
      .compactMap { buffer in
        guard let image = CGImage.create(from: buffer) else {
          return nil
        }

        var ciImage = CIImage(cgImage: image)

        if self.otherFilter {
          let param = [
            "inputRadius": 40.0,
            "inputIntensity": 1.0
          ];
          ciImage = ciImage.applyingFilter("CIBloom", parameters: param)
        }

        if self.crystalFilter {
          ciImage = ciImage.applyingFilter("CICrystallize")
        }

        if self.comicFilter {
          ciImage = ciImage.applyingFilter("CIComicEffect")
        }

        if self.monoFilter {
          ciImage = ciImage.applyingFilter("CIPhotoEffectNoir")
        }
        
        return self.context.createCGImage(ciImage, from: ciImage.extent)
      }
      .assign(to: &$frame)
  }
}
