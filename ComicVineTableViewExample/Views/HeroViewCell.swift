//
//  HeroViewCell.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

class HeroViewCell: UITableViewCell {

    // MARK: - Properties
    static let identifier = "HeroViewCell"

    // MARK: - Outlets
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var subTitleLabel:UILabel!
    
    // MARK: - Functions
    func configWith(_ info:Hero ){
        titleLabel.text = info.heroName
        subTitleLabel.text = info.personName
        //TODO: Refactor to use the shared function with closure to download the image
        getImage(urlPicture: info.pictureUrl)
    }
    
    func getImage(urlPicture:String){
        let url = URL(string: urlPicture)
        let data = try? Data(contentsOf: url!)
        if let imageData = data {
            let image = UIImage(data: imageData)
            self.imageView!.image = image
        }
    }
}
