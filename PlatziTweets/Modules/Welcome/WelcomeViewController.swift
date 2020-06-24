//
//  WelcomeViewController.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 23/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI(){
        loginButton.layer.cornerRadius = 25 
    }

}
