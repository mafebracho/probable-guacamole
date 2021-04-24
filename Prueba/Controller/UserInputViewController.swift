//
//  UserInputViewController.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 24.04.21.
//

import UIKit
import TinyConstraints

class UserInputViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UserInputCell.self, forCellReuseIdentifier: UserInputCell.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.edgesToSuperview()
    }
}

extension UserInputViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserInputCell.reuseIdentifier,
                                                 for: indexPath) as! UserInputCell
        cell.titleLabel.text = "Age"
        cell.unitLabel.text = "Years"
        
        return cell
    }
    
    
}
