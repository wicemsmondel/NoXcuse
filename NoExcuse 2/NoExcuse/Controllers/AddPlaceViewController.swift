//
//  AddPlaceViewController.swift
//  addPlace
//
//  Created by Mélik Menacer on 26/09/2019.
//  Copyright © 2019 Mélik Menacer. All rights reserved.
//

import UIKit



class AddPlaceViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var nameOfPlace: UITextField!
   
    @IBOutlet weak var hoursAddPlace: UITextField!
    
    @IBOutlet weak var photoButton: UIButton!
    
    @IBOutlet weak var addPlaceCategory: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoButton.setImage(UIImage(named: "addPlaceImage"), for: .normal)

    }
    
    let category = ["Football", "Basket", "Musculation", "Running", "Rugby"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return category[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return category.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(category[row])
//        label.text = category[row]
        
    }
    
    @IBAction func validateAddPlace(_ sender: Any) {
        
}
    
    @IBAction func photoAddPlace(_ sender: Any) {
  
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
   
    let actionSheet = UIAlertController(title: "Importer", message: "Choisir", preferredStyle: .actionSheet)
    
    actionSheet.addAction(UIAlertAction(title: "Prendre une photo", style: .default, handler: { (action:UIAlertAction) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }else{
                print("Camera non disponible")
        }
    }))
    
        actionSheet.addAction(UIAlertAction(title: "Choisir dans la galerie", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
            
        }))
    
        actionSheet.addAction(UIAlertAction(title: "Annuler", style: .cancel, handler: nil ))
    
    self.present(actionSheet, animated: true, completion: nil)
            
        }
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        photoButton.setImage(image, for: .normal)
        picker.dismiss(animated: true, completion: nil)
        }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
        
        // FAIRE UN IF ELSE POUR LE LOGO IMAGE QUAND LA PAGE EST VIDE
        
    }
    }
