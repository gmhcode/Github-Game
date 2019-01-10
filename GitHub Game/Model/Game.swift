//
//  Game.swift
//  GitHub Game
//
//  Created by Karissa McDaris on 1/10/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//
import UIKit

class Game {
    var lives: Int
    var bomb: [Bomb]
    
    init(lives: Int, bomb: [Bomb]) {
        self.lives = lives
        self.bomb = bomb
    }
}

class Bomb {
    
    var bombImage: UIImage
    var bombTapped: Bool
    
    init(bombImage: UIImage, bombTapped: Bool) {
        
        self.bombImage = bombImage
        self.bombTapped = bombTapped
    }
}
