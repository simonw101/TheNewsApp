//
//  chosenCountry.swift
//  The News App
//
//  Created by Simon Wilson on 17/04/2021.
//

import UIKit

struct ChosenCountryData {
    
    var countryDataArray = [ChosenCountryObject(countryCodeInit: "AE", countryNameInit: "United Arab Emirates", imageInit: UIImage(named: "uae")!),
                            ChosenCountryObject(countryCodeInit: "AR", countryNameInit: "Argentina", imageInit: UIImage(named: "arg")!),
                            ChosenCountryObject(countryCodeInit: "AT", countryNameInit: "Austria", imageInit: UIImage(named: "aut")!),
                            ChosenCountryObject(countryCodeInit: "AU", countryNameInit: "Australia", imageInit: UIImage(named: "aus")!),
                            ChosenCountryObject(countryCodeInit: "BE", countryNameInit: "Belgium", imageInit: UIImage(named: "beg")!),
                            ChosenCountryObject(countryCodeInit: "BG", countryNameInit: "Bulgaria", imageInit: UIImage(named: "bul")!),
                            ChosenCountryObject(countryCodeInit: "BR", countryNameInit: "Brazil", imageInit: UIImage(named: "bra")!),
                            ChosenCountryObject(countryCodeInit: "CA", countryNameInit: "Canada", imageInit: UIImage(named: "can")!),
                            ChosenCountryObject(countryCodeInit: "CH", countryNameInit: "Switzerland", imageInit: UIImage(named: "chf")!),
                            ChosenCountryObject(countryCodeInit: "CN", countryNameInit: "China", imageInit: UIImage(named: "cna")!),
                            ChosenCountryObject(countryCodeInit: "CO", countryNameInit: "Columbia", imageInit: UIImage(named: "col")!),
                            ChosenCountryObject(countryCodeInit: "CU", countryNameInit: "Cuba", imageInit: UIImage(named: "cba")!),
                            ChosenCountryObject(countryCodeInit: "CZ", countryNameInit: "Czechia", imageInit: UIImage(named: "cza")!),
                            ChosenCountryObject(countryCodeInit: "DE", countryNameInit: "Germany", imageInit: UIImage(named: "ger")!),
                            ChosenCountryObject(countryCodeInit: "EG", countryNameInit: "Egypt", imageInit: UIImage(named: "egy")!),
                            ChosenCountryObject(countryCodeInit: "FR", countryNameInit: "France", imageInit: UIImage(named: "fra")!),
                            ChosenCountryObject(countryCodeInit: "GB", countryNameInit: "Great Britain", imageInit: UIImage(named: "gbn")!),
                            ChosenCountryObject(countryCodeInit: "GR", countryNameInit: "Greece", imageInit: UIImage(named: "gre")!),
                            ChosenCountryObject(countryCodeInit: "HK", countryNameInit: "Hong Kong", imageInit: UIImage(named: "hkg")!),
                            ChosenCountryObject(countryCodeInit: "HU", countryNameInit: "Hungry", imageInit: UIImage(named: "hun")!),
                            ChosenCountryObject(countryCodeInit: "ID", countryNameInit: "Indonesia", imageInit: UIImage(named: "indo")!),
                            ChosenCountryObject(countryCodeInit: "IE", countryNameInit: "Ireland", imageInit: UIImage(named: "ire")!),
                            ChosenCountryObject(countryCodeInit: "IL", countryNameInit: "Israel", imageInit: UIImage(named: "isr")!),
                            ChosenCountryObject(countryCodeInit: "IN", countryNameInit: "India", imageInit: UIImage(named: "ind")!),
                            ChosenCountryObject(countryCodeInit: "IT", countryNameInit: "Italy", imageInit: UIImage(named: "ita")!),
                            ChosenCountryObject(countryCodeInit: "JP", countryNameInit: "Japan", imageInit: UIImage(named: "jap")!),
                            ChosenCountryObject(countryCodeInit: "KR", countryNameInit: "Korea, Republic of", imageInit: UIImage(named: "kor")!),
                            ChosenCountryObject(countryCodeInit: "LT", countryNameInit: "Lithuania", imageInit: UIImage(named: "lit")!),
                            ChosenCountryObject(countryCodeInit: "LV", countryNameInit: "Latvia", imageInit: UIImage(named: "lat")!),
                            ChosenCountryObject(countryCodeInit: "MA", countryNameInit: "Morocco", imageInit: UIImage(named: "mor")!),
                            ChosenCountryObject(countryCodeInit: "MX", countryNameInit: "Mexico", imageInit: UIImage(named: "mex")!),
                            ChosenCountryObject(countryCodeInit: "MY", countryNameInit: "Malaysia", imageInit: UIImage(named: "may")!),
                            ChosenCountryObject(countryCodeInit: "NG", countryNameInit: "Nigeria", imageInit: UIImage(named: "nig")!),
                            ChosenCountryObject(countryCodeInit: "NL", countryNameInit: "Netherlands", imageInit: UIImage(named: "net")!),
                            ChosenCountryObject(countryCodeInit: "NO", countryNameInit: "Norway", imageInit: UIImage(named: "nor")!),
                            ChosenCountryObject(countryCodeInit: "NZ", countryNameInit: "New Zealand", imageInit: UIImage(named: "new")!),
                            ChosenCountryObject(countryCodeInit: "PH", countryNameInit: "Philippines", imageInit: UIImage(named: "phil")!),
                            ChosenCountryObject(countryCodeInit: "PL", countryNameInit: "Poland", imageInit: UIImage(named: "pol")!),
                            ChosenCountryObject(countryCodeInit: "PT", countryNameInit: "Portugal", imageInit: UIImage(named: "pot")!),
                            ChosenCountryObject(countryCodeInit: "RO", countryNameInit: "Romania", imageInit: UIImage(named: "rom")!),
                            ChosenCountryObject(countryCodeInit: "RS", countryNameInit: "Serbia", imageInit: UIImage(named: "ser")!),
                            ChosenCountryObject(countryCodeInit: "RU", countryNameInit: "Russia", imageInit: UIImage(named: "rus")!),
                            ChosenCountryObject(countryCodeInit: "SA", countryNameInit: "Saudi Arabia", imageInit: UIImage(named: "saud")!),
                            ChosenCountryObject(countryCodeInit: "SE", countryNameInit: "Sweden", imageInit: UIImage(named: "swe")!),
                            ChosenCountryObject(countryCodeInit: "SG", countryNameInit: "Singapore", imageInit: UIImage(named: "sing")!),
                            ChosenCountryObject(countryCodeInit: "SI", countryNameInit: "Slovenia", imageInit: UIImage(named: "solv")!),
                            ChosenCountryObject(countryCodeInit: "SK", countryNameInit: "Slovakia", imageInit: UIImage(named: "solvakia")!),
                            ChosenCountryObject(countryCodeInit: "TH", countryNameInit: "Thailand", imageInit: UIImage(named: "tha")!),
                            ChosenCountryObject(countryCodeInit: "TR", countryNameInit: "Turkey", imageInit: UIImage(named: "tur")!),
                            ChosenCountryObject(countryCodeInit: "TW", countryNameInit: "Taiwan", imageInit: UIImage(named: "taiw")!),
                            ChosenCountryObject(countryCodeInit: "UA", countryNameInit: "Ukraine", imageInit: UIImage(named: "uka")!),
                            ChosenCountryObject(countryCodeInit: "US", countryNameInit: "United States", imageInit: UIImage(named: "usa")!),
                            ChosenCountryObject(countryCodeInit: "VE", countryNameInit: "Venezuela(Bolivarian Republic of)", imageInit: UIImage(named: "ven")!),
                            ChosenCountryObject(countryCodeInit: "ZA", countryNameInit: "Zambia", imageInit: UIImage(named: "zam")!),
                            
                            
                            
    ]
    
}
