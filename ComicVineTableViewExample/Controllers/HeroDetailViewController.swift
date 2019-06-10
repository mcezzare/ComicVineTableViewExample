//
//  HeroDetailViewController.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

class HeroDetailViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var heroNameLabel:UILabel!
    @IBOutlet weak var personNameLabel:UILabel!
    @IBOutlet weak var basicInfoTextView:UITextView!
    @IBOutlet weak var buttonGoToWebSite:UIButton!
    
    // MARK: Properties
    var hero:Hero!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        self.heroNameLabel.text =  self.hero.heroName
        self.personNameLabel.text = self.hero.personName
        self.basicInfoTextView.text = self.hero.basicInfo
        //TODO: Load Image
    }
    
    
    
}

