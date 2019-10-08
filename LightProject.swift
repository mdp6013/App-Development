//
//  ViewController.swift
//  Light
//
//  Created by Mansi Patel on 9/25/19.
//  Copyright © 2019 Mansi Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var changeColor = true
    
     var lightOn = true
    
    @IBOutlet var labelTitle: UILabel!
    
    @IBOutlet var colorChanger: UIButton!
    
    @IBAction func colorButton(_ sender: Any) {
        changeColor.toggle()
        
        if changeColor {
            view.backgroundColor = .blue
            lightButton.setTitle("On", for: .normal)
           
            
        } else {
            view.backgroundColor = .purple
            lightButton.setTitle("Off", for: .normal)
        }
        
    }
    
   
    @IBOutlet var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        
        updateUI()
    }
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
             labelTitle.textColor = .black
            
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
             labelTitle.textColor = .white
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    

}

