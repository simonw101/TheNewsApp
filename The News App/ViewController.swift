//
//  ViewController.swift
//  The News App
//
//  Created by Simon Wilson on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var chosenCountry = ChosenCountryData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenCountry.countryDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  chosenCountry.countryDataArray[indexPath.row].countryName
        cell.imageView?.image = chosenCountry.countryDataArray[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let pickedCountry = chosenCountry.countryDataArray[indexPath.row]
        
        performSegue(withIdentifier: "toNewsListVC", sender: pickedCountry)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toNewsListVC" {
            
            if let newsVC = segue.destination as? NewsListViewController {
                
                if let pickedCountry = sender as? ChosenCountryObject {
                    
                    newsVC.country = pickedCountry
                    
                }
                
            }
            
        }
    }
}
