//
//  ViewController.swift
//  TestImagePicker
//
//  Created by Cassia Franco on 30/10/20.
//  Copyright © 2020 Cassia Franco. All rights reserved.
//

import UIKit
import ImagePicker

class ViewController: UIViewController , ImagePickerDelegate {
    
    var imagePickerController : ImagePickerController!
    
    func wrapperDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        return
    }
    
    func doneButtonDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        imagePickerController.dismiss(animated: true, completion: {
            if images.count > 0 {
                self.bgImage.image = images[0]
            }
        })
        return
    }
    
    func cancelButtonDidPress(_ imagePicker: ImagePickerController) {
        return
    }
    

    @IBOutlet weak var bgImage: UIImageView!
    @IBAction func abrirImagePicker(_ sender: Any) {
        let imagePickerController = ImagePickerController()
        imagePickerController.delegate = self
        imagePickerController .imageLimit = 1
        present(imagePickerController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

