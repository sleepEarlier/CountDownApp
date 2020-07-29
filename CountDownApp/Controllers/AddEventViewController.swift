//
//  AddEventViewController.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/21.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit
import SnapKit

class AddEventViewController: UIViewController {
    var viewModel: AddEventViewModel!
    let tableView: UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        setupViews()
    }
    
    func setupNavi() {
        navigationItem.title = viewModel.title
        let cancelItem = UIBarButtonItem(title: viewModel.cancelDesc, style: .plain, target: self, action: #selector(tapCancel))
        let confirmItem = UIBarButtonItem(title: viewModel.confirmDesc, style: .plain, target: self, action: #selector(tapConfirm))
        navigationItem.rightBarButtonItem = confirmItem
        navigationItem.leftBarButtonItem = cancelItem
    }
    
    func setupViews() {
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
        tableView.tableFooterView = UIView()
        tableView.dataSource = self
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.didFinishAddEvent()
    }
    
    @objc func tapCancel() {
        
    }
    
    @objc func tapConfirm() {
        
    }
    
}

extension AddEventViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
