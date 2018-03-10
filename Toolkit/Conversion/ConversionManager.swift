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
        ConversionManager.conversionTypes.append(ConversionUnit("Temp", #imageLiteral(resourceName: "area"), ["F", "C"]))
        ConversionManager.conversionTypes.append(ConversionUnit("Money", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Mass", #imageLiteral(resourceName: "area"), ["Metric ton", "Kilogram", "Gram", "Milligram", "Microgram", "Imperial ton", "US ton", "Stone", "Pound", "Ounce"]))
        ConversionManager.conversionTypes.append(ConversionUnit("Area", #imageLiteral(resourceName: "area"), ["Square kilometer", "Square meter", "Square mile", "Square yard", "Square foot", "Square inch", "Hectare", "Acre"]))
        ConversionManager.conversionTypes.append(ConversionUnit("Data", #imageLiteral(resourceName: "area"), ["Bit per second", "Kilobit per second", "Kilobyte per second", "Kibibit per second", "Megabit per second", "Megabyte per second", "Mebibit per second", "Gigabit per second", "Gigabyte per second", "Gibibit per second", "Terabit per second", "Terabyte per second", "Tebibit per second"]))
        ConversionManager.conversionTypes.append(ConversionUnit("Storage", #imageLiteral(resourceName: "area"), ["Bit", "Kilobit", "Kibibit", "Megabit", "Mebibit", "Gigabit", "Gibibit", "Terabit", "Tebibit", "Petabit", "Pebibit", "Byte", "Kilobyte", "Kibibyte", "Megabyte", "Mebibyte", "Gigabyte", "Gibibyte", "Terabyte", "Tebibyte", "Petabyte", "Pebibyte"]))
        ConversionManager.conversionTypes.append(ConversionUnit("Energy", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Frequency", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Fuel", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Length", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Angle", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Pressure", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Speed", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Time", #imageLiteral(resourceName: "area"), []))
        ConversionManager.conversionTypes.append(ConversionUnit("Volume", #imageLiteral(resourceName: "area"), []))
        
    }
    
    func getConversionTypes() -> [ConversionUnit] {
        return ConversionManager.conversionTypes
    }
}
