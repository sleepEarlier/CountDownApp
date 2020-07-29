//
//  AddEventCoordinator.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/21.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navi: UINavigationController
    
    var parentCoordinator: EventListCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navi = navigationController
    }
    
    deinit {
        print("Add Event Coordinator deinit")
    }
    
    func start() {
        let vc: AddEventViewController = .instantiate()
        let navigationController = UINavigationController(rootViewController: vc)
        let vm = AddEventViewModel()
        vm.coordinator = self
        vc.viewModel = vm
        navi.present(navigationController, animated: true) {
            print("present finish")
        }
    }
    
    func didFinishAddEvent() {
        self.parentCoordinator?.childDidFinish(self)
    }
}
