//
//  HeroesTableViewController.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

class HeroesTableViewController:UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    // MARK: Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    var heroes = Fetcher.shared.loadHeroes()
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
       // print(self.heroes)
        
    }
    
    // MARK: Datasources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroViewCell.identifier , for:indexPath) as! HeroViewCell
        cell.configWith(self.heroes[(indexPath as NSIndexPath).row])
//        let hero = self.heroes[(indexPath as NSIndexPath).row]
        
//        cell.textLabel?.text = hero.heroName
//        if let detailLabel = cell.detailTextLabel{
//            detailLabel.text = hero.personName
//        }
        
        return cell
    }
    
    // MARK: Delegates
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
