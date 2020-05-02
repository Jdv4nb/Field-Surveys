//
//  Classification.swift
//  Field Surveys
//
//  Created by Jonathan Van Egeren on 5/1/20.
//  Copyright © 2020 Jonathan Van Egeren. All rights reserved.
//

import UIKit

enum Classification: String {
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
