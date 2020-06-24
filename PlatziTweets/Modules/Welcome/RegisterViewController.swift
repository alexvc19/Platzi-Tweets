//
//  RegisterViewController.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 23/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit
import NotificationBannerSwift

class RegisterViewController: UIViewController {
    
    // MARK: - Outlets
      @IBOutlet weak var signupButton: UIButton!
      @IBOutlet weak var emailTextField: UITextField!
      @IBOutlet weak var passwordTextField: UITextField!
      @IBOutlet weak var namesTextField: UITextField!
      //MARK: - IBActions
      @IBAction func singupButtonAction(){
        view.endEditing(true)
          performSingup()
      }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
   private func setupUI(){
         signupButton.layer.cornerRadius = 25
     }
    private func performSingup(){
        guard let names = namesTextField.text, !names.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "Debes especificar tu nombre", style: .warning).show()
            return
        }
        
        
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
