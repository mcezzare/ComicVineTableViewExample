//
//  Hero.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

//   let heroes = try? newJSONDecoder().decode(Heroes.self, from: jsonData)

import Foundation

// MARK: - Hero
struct Hero: Codable {
    let id: String
    let personName: String
    let heroName: String
    let profileUrl: String
    let pictureUrl: String
    let basicInfo: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case personName = "person_name"
        case heroName = "hero_name"
        case profileUrl = "profile_url"
        case pictureUrl = "picture_url"
        case basicInfo = "basic_info"
    }
}

typealias Heroes = [Hero]
