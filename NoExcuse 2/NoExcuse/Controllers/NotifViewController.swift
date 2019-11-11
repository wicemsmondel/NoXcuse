//
//  ViewController.swift
//  NotifPresence
//
//  Created by anis aksil on 27/09/2019.
//  Copyright © 2019 anys aksil. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var imageNotif: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var nameSalle: UILabel!
    
    @IBOutlet weak var adresseSalle: UILabel!
    
    @IBOutlet weak var horaireSalle: UILabel!
    
    @IBOutlet weak var numSalle: UILabel!
    
    @IBOutlet weak var notPresence: UISegmentedControl!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var okButton: UIButton!
    

    var images: [String] = ["SalleSport0", "SalleSport1", "SalleSport2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PlaceCollectionViewCell
        
        cell.placeImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    
    }
    
    @IBAction func notPresence(_ sender: Any) {
        let selectedSegmentIndex = notPresence.selectedSegmentIndex
        print(selectedSegmentIndex)
        
        switch (selectedSegmentIndex) {
        case 0:
            self.datePicker.isHidden = false
            
        case 1:
            self.datePicker.isHidden = true
            
        default:
            break
        }
    }
}

