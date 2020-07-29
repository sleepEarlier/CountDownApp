//
//  EventListViewModel.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/21.
//  Copyright © 2020 usoppb. All rights reserved.
//

import Foundation

final class EventListViewModel {
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
