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
    
    @IBOutlet weak var livesLeft: UILabel!
    
    var randomNumberDraw: Int {
      return (1...50).randomElement()!
    }
    var higharray = [44,45,46,47,48,49]
    
    var lives = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        livesLeft.text = "\(lives)"
        
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
        livesLeft.text = "\(lives)"
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! MineFieldCollectionViewCell
        
        
        if cell.tileImage.image == UIImage(named: "dirtTile"){
            return
        }
        if cell.tileImage.image == UIImage(named: "bomb"){
            return
        }

        let bombRange = higharray.randomElement()
        
    
        if randomNumberDraw >= bombRange! {
            cell.tileImage.image = UIImage(named: "bomb")
            
            higharray.remove(at: higharray.count - 1)
            print(higharray)
            lives -= 1
            livesLeft.text = "\(lives)"
            
                if lives == 0 {
                    loseAlert(cell: cell, indexPath: indexPath)
                    lives = 3
                    higharray = [40,41,42,43,44,45,46,47,48,49,50]
                
                }
        }
        else {
            cell.tileImage.image = UIImage(named: "dirtTile")
        }
       
        
        
    }
    func loseAlert(cell: MineFieldCollectionViewCell, indexPath: IndexPath){
        
    let alert = UIAlertController(title: "You lost!", message: "Do you want to retry?", preferredStyle: .alert)
    
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (_) in
           
            self.resetCells(cell: cell, indexPath: indexPath)
            self.collectionView.reloadData()
        }))
    alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
    
    self.present(alert, animated: true)
        
    
    }
    
    func resetCells(cell: MineFieldCollectionViewCell, indexPath: IndexPath){
        
        cell.updateViews()
    }
}

extension MineFieldViewController{
    
    
    
    
}

