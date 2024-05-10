//
//  PhotoEditor+Crop.swift
//  Pods
//
//  Created by Mohamed Hamed on 6/16/17.
//
//

import Foundation
import UIKit

// MARK: - CropView
extension PhotoEditorViewController: CropViewControllerDelegate {
    
    public func cropViewController(_ controller: CropViewController, didFinishCroppingImage image: UIImage, transform: CGAffineTransform, cropRect: CGRect) {
        hideToolbar(hide: false)
        controller.dismiss(animated: true, completion: nil)
        self.setImageView(image: image)
    }
    
    public func cropViewControllerDidCancel(_ controller: CropViewController) {
        hideToolbar(hide: false)
        controller.dismiss(animated: true, completion: nil)
    }
    
}
