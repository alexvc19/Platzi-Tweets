//
//  LoginViewController.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 23/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit
import NotificationBannerSwift

class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - IBActions
    @IBAction func loginButtonAction(){
        view.endEditing(true)
        performLogin()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    //MARK: - Private Methods
    private func setupUI(){
          loginButton.layer.cornerRadius = 25
      }

    private func performLogin(){
        guard let email = emailTextField.text, !email.isEmpty else{
            NotificationBanner(title: "Error", subtitle: "Debes colocar un correo", style: .warning).show()
            
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "Debes colocar una contraseña", style: .warning).show()
            return
        }
        
        performSegue(withIdentifier: "showHome", sender: nil)
        
        //iniciar sesion aqui
    }
    
}
