//
//  ViewController.swift
//  SwiftCameraAndGalleryExample
//
//  Created by MacStudent on 2019-03-13.
//  Copyright © 2019 Aman Mann. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    @IBAction func Gallary(_ sender: UIBarButtonItem)
    {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .photoLibrary
            self.present(myPickerController, animated: true, completion: nil)
            
    
        }}
    @IBAction func Camera(_ sender: UIBarButtonItem)
    {
    if UIImagePickerController.isSourceTypeAvailable(.camera)
    {
    let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
    myPickerController.sourceType = .camera
    self.present(myPickerController, animated: true, completion: nil)
    }
        
    }
    
    @IBOutlet weak var Imgview: UIImageView!
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if let image=info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
        self.Imgview.image=image
    }else{
        print("Something went wrong")
    }
    self.dismiss(animated: true, completion: nil)
}
}
