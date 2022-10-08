//
//  ListFruitViewController.swift
//  valentin.kahn-barberon.rattrapage
//
//  Created by Valentin Kahn-Barberon on 07/10/2022.
//

import UIKit

class ListFruitViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var fruits = [FruitModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadFruits {
            self.tableView.reloadData()
            print("success")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tab = min(5, fruits.count)
        return tab
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let fruit = fruits[indexPath.row]
        cell.textLabel?.text = fruit.name.capitalized
        cell.detailTextLabel?.text = fruit.family.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FruitViewController {
            destination.fruit = fruits[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func downloadFruits(completed: @escaping () ->()) {
       let url = URL(string: "https://www.fruityvice.com/api/fruit/all")
        
        URLSession.shared.dataTask(with: url!) { data, response, err in
            
            if err == nil {
                do{
                    self.fruits = try JSONDecoder().decode([FruitModel].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch{
                    print("Error fetching data from api")
                }
                
            }
        }.resume()
        
    }

}
