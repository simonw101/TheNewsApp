//
//  NewsListViewController.swift
//  The News App
//
//  Created by Simon Wilson on 22/04/2021.
//

import UIKit

class NewsListViewController: UIViewController {
    
    var country: ChosenCountryObject? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let stringTitle = country?.countryName {
            
            title = stringTitle
            
        }
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let countryCode = country?.countryCode {
            
            print(countryCode)
            
            downloadData(url: "https://newsapi.org/v2/top-headlines?country=\(countryCode)&apiKey=a17d3f6b672c42e1bdc0c682e19a33fd")
            
        }
        
    }
    
    func downloadData(url: String) {
        
        if let url = URL(string: url) {
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if let errorMessage = error {
                    
                    print(errorMessage.localizedDescription)
                    
                } else {
                    
                    if let data = data {
                        
                        do {
                            
                            let parsedJsonData = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
                            
                            print(parsedJsonData)
                            
                        } catch {
                            
                            print("error parsing json")
                            
                        }
                        
                    }
                    
                }
                
            }
            task.resume()
            
        }
        
    }
    

}
