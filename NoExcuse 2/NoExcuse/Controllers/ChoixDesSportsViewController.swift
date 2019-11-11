//
//  choixDesSportsViewController.swift
//  choixDesSports
//
//  Created by Mehdi Mokraoui on 02/10/2019.
//  Copyright © 2019 Mehdi Mokraoui. All rights reserved.
//

import UIKit

class ChoixDesSportsViewController: UIViewController, UICollectionViewDataSource,
UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let sports = ["Acrosport" ,"Aerobic", "Aikido", "Alpinisme", "Aquabike", "Athletisme","Badminton", "Baseball", "Basketball", "Billard", "Curling"]
    
    let sportImages : [UIImage] = [
    
        UIImage(named:"acrosport")!,
        UIImage(named:"aerobic")!,
        UIImage(named:"aikido")!,
        UIImage(named:"alpinisme")!,
        UIImage(named:"aquabike")!,
        UIImage(named:"athletisme")!,
        UIImage(named:"badminton1")!,
        UIImage(named:"baseball")!,
        UIImage(named:"basketballl")!,
        UIImage(named:"billard")!,
        UIImage(named:"curling")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sports.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
    
        cell.sportName.text = sports[indexPath.item]
        cell.imageSport.image = sportImages [indexPath.item]
        
        return cell
    }
    
    @IBAction func closeAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func indexTitles(for collectionView: UICollectionView) -> [String]? {
        return ["A", "B", "C"]
    }
}
