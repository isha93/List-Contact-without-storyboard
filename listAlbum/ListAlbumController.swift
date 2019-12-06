//
//  ListAlbumController.swift
//  listAlbum
//
//  Created by isa nur fajar on 06/12/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation
import UIKit

class ListAlbumController : UIViewController, UITableViewDataSource {
    
    private let users = UserAPI.getUsers() // model
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tableUser()
    }
    
    func tableUser() {
        let userTableView = UITableView()
        view.addSubview(userTableView)
        userTableView.translatesAutoresizingMaskIntoConstraints = false
        userTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        userTableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        userTableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        userTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        userTableView.dataSource = self
        userTableView.register(UITableViewCell.self, forCellReuseIdentifier: "userCell")
    }

}
