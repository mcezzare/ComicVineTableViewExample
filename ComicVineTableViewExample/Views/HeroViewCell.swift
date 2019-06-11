//
//  HeroViewCell.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

class HeroViewCell: UITableViewCell {
    
    static let identifier = "HeroViewCell"
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var subTitleLabel:UILabel!
    
    func configWith(_ info:Hero ){
        titleLabel.text = info.heroName
        subTitleLabel.text = info.personName
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
