//
//  ListAlbumController.swift
//  listAlbum
//
//  Created by isa nur fajar on 06/12/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation
import UIKit

class ListAlbumController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let users = UserAPI.getUsers() // model
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        cell.user = users[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
           let width = self.view.frame.width
           let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: width, height: 44))
           self.view.addSubview(navigationBar);
           let navigationItem = UINavigationItem(title: "Navigation bar")
        view.backgroundColor = .white
        self.tableUser()
        navigationItem.title = "Contacts"
    }
    
    func tableUser() {
        let userTableView = UITableView()
        view.addSubview(userTableView)
        userTableView.translatesAutoresizingMaskIntoConstraints = false
        userTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        userTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
        userTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
        userTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        userTableView.dataSource = self
        userTableView.delegate = self
        userTableView.register(UserTableViewCell.self, forCellReuseIdentifier: "userCell")
    }

}
