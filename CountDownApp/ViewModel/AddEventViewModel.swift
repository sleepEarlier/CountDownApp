//
//  AddEventViewModel.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/21.
//  Copyright © 2020 usoppb. All rights reserved.
//

import Foundation

final class AddEventViewModel {
    let title = "Add Event"
    let cancelDesc = "Cancel"
    let confirmDesc = "Confirm"
    
    var coordinator: AddEventCoordinator?
    
    func didFinishAddEvent() {
        self.coordinator?.didFinishAddEvent()
    }
    
    func numberOfItems(in section: Int) -> Int {
        return 3
    }
}
