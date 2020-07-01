//
//  AddPostViewController.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 29/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit
import Simple_Networking
import SVProgressHUD
import NotificationBannerSwift

class AddPostViewController: UIViewController {
    
    @IBOutlet weak var postTextView: UITextView!
    
    //MARk: - IBActions
    @IBAction func addPostAction(){
        savePost()
    }
    @IBAction func dismissAction(){
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func savePost(){
        // 1. Crear reuqest
        let request = PostRequest(text: postTextView.text, imageUrl: nil, videoUrl: nil, location: nil)
        
        //2. Indicar carga al usuario
        SVProgressHUD.show()
        
        //3. Llamar al servicio del post
        SN.post(endpoint: Endpoints.post,
                model: request) { (response: SNResultWithEntity<Post, ErrorResponse>) in
                    
                    //4. Cerrar indicardor de carga
                    SVProgressHUD.dismiss()
                    switch response {
                    case .success:
                        self.dismiss(animated: true, completion: nil)
                        
                    case .error(let error):
                        NotificationBanner(title: "Error", subtitle: error.localizedDescription, style: .danger).show()
                        
                    case .errorResult(let entity):
                        NotificationBanner(title: "Error", subtitle: entity.error, style: .warning).show()
                    }
        }
    }
    
}
