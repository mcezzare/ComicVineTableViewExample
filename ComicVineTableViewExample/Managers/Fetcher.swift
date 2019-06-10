//
//  Fetcher.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import Foundation

class Fetcher {
    
    // MARK: Singleton
    static let shared = Fetcher()
    
    
    /// Loads data from local json file
    ///
    /// - Returns: Array of Heroes
    func loadHeroes() -> [Hero]  {
        var heroes = [Hero]()
        let filename = "heroes.json"
        guard let url = URL(string: filename) else {return heroes}
        guard let filePath = Bundle.main.path(forResource: url.deletingPathExtension().absoluteString, ofType: url.pathExtension) else {return heroes}
        print("\(#function): \(filePath)")
        guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: filePath)) else {return heroes}
        print(jsonData)
        heroes = try! JSONDecoder().decode(Heroes.self, from: jsonData)
        return heroes
    }
    
    
}
