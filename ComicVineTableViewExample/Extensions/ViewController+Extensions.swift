//
//  ViewController+Extensions.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // MARK: Functions
    
    
    /// Show an Alert to user
    ///
    /// - Parameters:
    ///   - title: title of alert
    ///   - message: description text
    ///   - action: closure if needed
    func showAlert(title:String, message:String, action: (() -> Void)? = nil ){
        let alertViewController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
            action?()
        }))
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    
    /// Launch safari with a valid Link
    ///
    /// - Parameter url: url string to open
    func openWithSafari(_ url:String){
        guard let url = URL(string: url), UIApplication.shared.canOpenURL(url) else {
            showAlert(title: "Erro", message: "Url Inválida")
            return
        }
        UIApplication.shared.open(url, options: [:])
    }
    
    
    /// Download and image from remote host
    ///
    /// - Parameters:
    ///   - url: url to use
    ///   - completion: closure to run after download, normaly used with GCD
    func loadImage(url:String, completion : @escaping(_ image: UIImage ) -> Void){
        let url = URL(string: url)
        let data = try? Data(contentsOf: url!)
        if let imageData = data {
            let image = UIImage(data: imageData)
            completion(image!)
        }
    }
    
}
