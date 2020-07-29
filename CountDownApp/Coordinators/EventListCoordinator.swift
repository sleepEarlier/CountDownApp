//
//  EventListCoordinator.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/20.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navi: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navi = navigationController
    }
    
    func start() {
        let eventListController: EventListController = .instantiate()
        let vm = EventListViewModel()
        vm.coordinator = self
        eventListController.viewModel = vm
        navi.setViewControllers([eventListController], animated: false)
    }
    
    func startAddEvent() {
        let addEventCoordinator = AddEventCoordinator(navigationController: navi)
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.parentCoordinator = self
        addEventCoordinator.start()
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { (coordinator) -> Bool in
            return childCoordinator === coordinator
        }) {
            childCoordinators.remove(at: index)
        }
    }
}
