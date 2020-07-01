//
//  HomeViewController.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 26/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit
import Simple_Networking
import SVProgressHUD
import NotificationBannerSwift

class HomeViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties
    private let cellId = "TweetTableViewCell"
    private var dataSorce = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
         getPosts()
    }
    
    private func setupUI(){
        //1. Asignar datasorce
        //2. registrar celda
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    private func getPosts(){
        //1.- Indicar carga al usuario
        SVProgressHUD.show()
        
        //2.- Consumir el servicio
        SN.get(endpoint: Endpoints.getPosts) { (response: SNResultWithEntity<[Post], ErrorResponse>) in
            //cerramos el indicador de carga
            SVProgressHUD.dismiss()
                       
           switch response {
                    case .success(let posts):
                        self.dataSorce = posts
                        self.tableView.reloadData()
                                   
                    case .error(let error):
                        NotificationBanner(title: "Error", subtitle: error.localizedDescription, style: .danger).show()
                                   
                    case .errorResult(let entity):
                    NotificationBanner(title: "Error", subtitle: entity.error, style: .warning).show()
                    }
            
        }
    }

}
//MARK: - UITableViewSource
extension HomeViewController: UITableViewDataSource{
    // numero total de celdas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSorce.count
    }
    
    //configurar celda deseada
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        if let cell = cell as? TweetTableViewCell{
          //configurar la celda
            cell.setUpCellWith(post: dataSorce[indexPath.row])
        }
        return cell
    }
}
