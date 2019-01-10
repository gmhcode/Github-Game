//
//  MineFieldViewController.swift
//  GitHub Game
//
//  Created by Greg Hughes on 1/10/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

class MineFieldViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

   
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 48
        
    }
    
    
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MineFieldCollectionViewCell
        
        cell.tileImage.image = UIImage(named: "grassTile")
        
        
        // Configure the cell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! MineFieldCollectionViewCell
        
        
        var range = (1...50).randomElement()
        var bombRange = (40...50).randomElement()
        
        
        
        if range! >= bombRange! {
            cell.tileImage.image = UIImage(named: "bomb")
        }
        else {
            cell.tileImage.image = UIImage(named: "dirtTile")
        }
       
        
        
        
       
       
        
        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        <#code#>
//    }

}
