//
//  colour.swift
//  colourMixer
//
//  Created by Van Quang Nguyen on 11/02/2020.
//  Copyright © 2020 Van Quang Nguyen. All rights reserved.
//

import Foundation
import UIKit
class Colour{
    
    var redValue:Float = 0.0
    var GreenValue:Float = 0.0
    var BLueValue:Float = 0.0
    
    init(red:Float, green:Float, blue:Float)
    {
        redValue = red
        GreenValue = green
        BLueValue = blue
    }
    func getColour() -> UIColor {
        let newColour = UIColor(
            red:CGFloat(redValue/255.0),
            green:CGFloat(GreenValue/255.0),
            blue:CGFloat(BLueValue/255.0),alpha:1.0)
        
        return newColour
    }
}
