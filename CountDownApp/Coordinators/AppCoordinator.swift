//
//  AppCoordinator.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/17.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navi = UINavigationController()
        
        let eventListCoordinator = EventListCoordinator(navigationController: navi)
        childCoordinators.append(eventListCoordinator)
        eventListCoordinator.start()
        
        window.rootViewController = navi;
        window.makeKeyAndVisible()
    }
}
