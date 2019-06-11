//
//  HeroDetailViewController.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

class HeroDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var heroNameLabel:UILabel!
    @IBOutlet weak var personNameLabel:UILabel!
    @IBOutlet weak var basicInfoTextView:UITextView!
    @IBOutlet weak var buttonGoToWebSite:UIButton!
    
    // MARK: - Properties
    var hero:Hero!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Actions
    @IBAction func buttonPressed(_ sender: Any){
        let fullURL = "\(Fetcher.baseUrlImages)\(self.hero.profileUrl)"
        openWithSafari(fullURL)
    }
    
    // MARK: - Helpers
    
    /// Configure UI Itens
    func configureUI(){
        self.heroNameLabel.text =  self.hero.heroName
        self.personNameLabel.text = self.hero.personName
        self.basicInfoTextView.text = self.hero.basicInfo
        //        getImage(urlPicture: self.hero.pictureUrl)
        DispatchQueue.main.async {
            self.loadImage(url: self.hero.pictureUrl) { (image) in
                
                self.imageView.image = image
            }
            
        }
    }
    
    
}

