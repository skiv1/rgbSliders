//
//  ViewController.swift
//  rgbSliders
//
//  Created by Anton Grekov on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var viewColour: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labels
        labelRed.text = String(sliderRed.value)
        labelBlue.text = String(sliderBlue.value)
        labelGreen.text = String(sliderGreen.value)
    }

    // sliders
    @IBAction func sliderRedAction() {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        let sliderRedValue = CGFloat(sliderRed.value)
        viewColour.backgroundColor = UIColor .red
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(sliderRedValue)
        
    
    }
    
    @IBAction func sliderGreenAction() {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        let sliderGreenValue = CGFloat(sliderGreen.value)
        viewColour.backgroundColor = UIColor .green
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(sliderGreenValue)

        
    }
    @IBAction func sliderBlueAction() {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        let sliderBlueValue = CGFloat(sliderBlue.value)
        viewColour.backgroundColor = UIColor .blue
        viewColour.backgroundColor = viewColour.backgroundColor?.withAlphaComponent(sliderBlueValue)


    }
    
   
    
    
}

