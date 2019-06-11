//
//  ViewController+Extensions.swift
//  ComicVineTableViewExample
//
//  Created by Mario Cezzare on 10/06/19.
//  Copyright © 2019 Mario Cezzare. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(title:String, message:String, action: (() -> Void)? = nil ){
        let alertViewController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
            action?()
        }))
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    func openWithSafari(_ url:String){
        guard let url = URL(string: url), UIApplication.shared.canOpenURL(url) else {
            showAlert(title: "Erro", message: "Url Inválida")
            return
        }
        UIApplication.shared.open(url, options: [:])
    }
    
//    func getImageData(urlPicture:String, completion: @escaping ( _ result: VoidResult, _ image: UIImage?) -> () ) {
//        let url = URL(string: urlPicture)
//        let data = try? Data(contentsOf: url!)
//        if let imageData = data {
//            let image = UIImage(data: imageData)
//            completion(.success,image)
//        }
//        let userInfo = [NSLocalizedDescriptionKey : "Erro ao baixar a imagem"]
//        let error = NSError(domain: "", code: 1, userInfo: userInfo)
//        completion(.failure(error) , nil)
//        
//    }
    
}
//
//enum VoidResult {
//    case success
//    case failure(NSError)
//}
