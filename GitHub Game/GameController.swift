//
//  GameController.swift
//  GitHub Game
//
//  Created by Karissa McDaris on 1/10/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import Foundation
import UIKit

class GameController {
    
    func bombIsTapped(bomb: Bomb) -> UIImage? {
        let bombTapped = bomb.bombTapped
        if bombTapped == true {
            return UIImage(named: "bomb")
        } else {
            return nil
        }
    }
    
}
