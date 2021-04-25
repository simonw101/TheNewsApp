//
//  NewsListViewController.swift
//  The News App
//
//  Created by Simon Wilson on 22/04/2021.
//

import UIKit
import SwiftyJSON

class NewsListViewController: UIViewController {
    
    @IBOutlet weak var newsTable: UITableView!
    
    var country: ChosenCountryObject? = nil
    
    var newsArticles = [NewsObject]()
    
    var parse = ParseJson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let stringTitle = country?.countryName {
            
            title = stringTitle
            
        }
        
        newsTable.delegate = self
        newsTable.dataSource = self
        
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
                        
                        self.newsArticles = self.parse.parse(data: data)
                            
                            DispatchQueue.main.async {

                                self.newsTable.reloadData()
                            }
                            
                        
                    }
                    
                }
                
            }
            task.resume()
            
        }
        
    }
    
}

extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArticles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  newsArticles[indexPath.row].title
        return cell
    }
    
}


