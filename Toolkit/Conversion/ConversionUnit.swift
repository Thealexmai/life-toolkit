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
    private let possibilities: [String]
    
    init(_ name: String, _ image: UIImage, _ possibilities: [String]) {
        self.name = name
        self.image = image
        self.possibilities = possibilities
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getImage() -> UIImage {
        return self.image
    }
    
    func getPossibilities() -> [String] {
        return self.possibilities
    }
}
