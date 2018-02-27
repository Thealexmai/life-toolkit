//
//  ConversionManager.swift
//  Toolkit
//
//  Created by Alex Mai on 2/26/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import Foundation

class ConversionManager {
    
    private static var conversionTypes = [ConversionUnit]()
    
    init() {
        ConversionManager.conversionTypes.append(ConversionUnit("Temp", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Money", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Mass", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Area", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Data", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Storage", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Energy", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Frequency", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Fuel", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Length", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Angle", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Pressure", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Speed", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Time", #imageLiteral(resourceName: "area")))
        ConversionManager.conversionTypes.append(ConversionUnit("Volume", #imageLiteral(resourceName: "area")))
        
    }
    
    func getConversionTypes() -> [ConversionUnit] {
        return ConversionManager.conversionTypes
    }
}
