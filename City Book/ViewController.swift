//
//  ViewController.swift
//  City Book
//
//  Created by Nureddin Elmas on 2021-11-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var citymarkNames = [String]()
    var citymarkImages = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        citymarkNames.append("Mjölby")
        citymarkNames.append("Stockholm")
        citymarkNames.append("Malmö")
        citymarkNames.append("Göteborg")
      
        
      
        
        citymarkImages.append(UIImage(named: "mjölby")!)
        citymarkImages.append(UIImage(named: "stockholm")!)
        citymarkImages.append(UIImage(named: "malmö")!)
        citymarkImages.append(UIImage(named: "göteborg")!)
    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            citymarkNames.remove(at: indexPath.row)
            citymarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)

        }
            
            }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()

        cell.textLabel?.text = citymarkNames[indexPath.row]
        cell.imageView?.image = citymarkImages[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citymarkNames.count
    }
    
    

}

