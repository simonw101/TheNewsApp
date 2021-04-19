//
//  ChosenCountryObject.swift
//  The News App
//
//  Created by Simon Wilson on 18/04/2021.
//

import UIKit

class ChosenCountryObject {
    
    var countryCode = ""
    var countryName = ""
    var image = UIImage()
    
    init(countryCodeInit: String, countryNameInit: String, imageInit: UIImage) {
        self.countryCode = countryCodeInit
        self.countryName = countryNameInit
        self.image = imageInit
    }
}
