//
//  ViewController.swift
//  Example
//
//  Created by Михаил Асмаковец on 08.11.2019.
//  Copyright © 2019 Михаил Асмаковец. All rights reserved.
//

import UIKit
import HWSomeFramework

class ViewController: PerfectViewController {

    var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBackground(withColor: colors[currentIndex])
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
    }
    
    @objc func handleClick() {
        currentIndex += 1
        
        if !colors.indices.contains(currentIndex) {
            currentIndex = 0
        }
        
        changeBackground(withColor: colors[currentIndex])
    }

}

