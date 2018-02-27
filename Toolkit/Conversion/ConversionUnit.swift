//
//  ConversionUnit.swift
//  Toolkit
//
//  Created by Alex Mai on 2/26/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import Foundation
import UIKit

class ConversionUnit {
    private let name:String
    private let image: UIImage
    
    init(_ name: String, _ image: UIImage) {
        self.name = name
        self.image = image
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getImage() -> UIImage {
        return self.image
    }
}
