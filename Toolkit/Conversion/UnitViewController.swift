//
//  UnitViewController.swift
//  Toolkit
//
//  Created by Alex Mai on 2/27/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import UIKit

class UnitViewController: UIViewController {
    
    
    var unitType: ConversionUnit!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(unitType.getName())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
}
