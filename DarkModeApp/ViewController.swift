//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Atil Samancioglu on 1.09.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        //overrideUserInterfaceStyle = .light
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
              
              if userInterfaceStyle == .dark {
                  changeButton.tintColor = UIColor.white
              } else {
                  changeButton.tintColor = UIColor.blue
              }
              
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
                    
                    if userInterfaceStyle == .dark {
                        changeButton.tintColor = UIColor.white
                    } else {
                        changeButton.tintColor = UIColor.blue
                    }
    }
    
    


}

