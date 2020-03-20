//
//  ViewController.swift
//  colourMixer
//
//  Created by Van Quang Nguyen on 11/02/2020.
//  Copyright © 2020 Van Quang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sldierGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var lebelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var imageViewColourPanel: UIImageView!
    var colourMix:Colour?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lebelRed.text = "0"
        labelGreen.text = "0"
        labelBlue.text = "0"
        colourMix = Colour(red: 0.0, green: 0.0, blue: 0.0)
    }

    @IBAction func RedValueChanged(_ sender: UISlider) {
        //update red
        lebelRed.text = String(format:  "%.0f",sliderRed.value)
        colourMix?.redValue = sliderRed.value
        imageViewColourPanel.backgroundColor = colourMix?.getColour()
    }
    
    @IBAction func GreenValueChanged(_ sender: UISlider) {
        //update green
        labelGreen.text = String(format:  "%.0f",sldierGreen.value)
        colourMix?.GreenValue = sldierGreen.value
        imageViewColourPanel.backgroundColor = colourMix?.getColour()
    }
    
    @IBAction func BLueValueChanged(_ sender: UISlider) {
        //update blue
        labelBlue.text = String(format:  "%.0f",sliderBlue.value)
        colourMix?.BLueValue = sliderBlue.value
        imageViewColourPanel.backgroundColor = colourMix?.getColour()
    }
}

