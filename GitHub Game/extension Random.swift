//
//  extension Random.swift
//  GitHub Game
//
//  Created by Greg Hughes on 1/10/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension Array{
   
   func randomItem() -> Element? {
            if isEmpty { return nil }
            let index = Int(arc4random_uniform(UInt32(self.count)))
            return self[index]
  }
    
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
