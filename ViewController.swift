//
//  ViewController.swift
//  Light
//
//  Created by Mansi Patel on 9/25/19.
//  Copyright © 2019 Mansi Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var customTextField: UITextField!
    
    var lightOn = true
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn.toggle()
        updateUI()
    }
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func changeTextClick(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    

}

