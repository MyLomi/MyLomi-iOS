//
//  MessageViewController.swift
//  MyLomi
//
//  Created by Yohannes on 8/10/23.
//

import UIKit

class MessageViewController: UIViewController {

    private let searchBar = UISearchBar()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(MessageTableViewCell.self, forCellReuseIdentifier: MessageTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        applyConstraints()
    }
    
    private func setUpViews(){
        view.backgroundColor = .systemBackground
        searchBar.placeholder = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.titleView = searchBar
        navigationItem.title = "Messages"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        view.addSubview(tableView)
    }
    
    private func applyConstraints(){
        searchBar.sizeToFit()
        tableView.frame = view.bounds
    }

}

extension MessageViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MessageTableViewCell.identifier, for: indexPath) as? MessageTableViewCell else{
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
