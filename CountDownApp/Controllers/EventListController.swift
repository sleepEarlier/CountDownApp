//
//  EventListController.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/20.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit

class EventListController: UIViewController {
    var viewModel: EventListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @objc private func tappedAddButton(item: UIBarButtonItem) {
        viewModel.tappedAddEvent()
    }
    
    
}
