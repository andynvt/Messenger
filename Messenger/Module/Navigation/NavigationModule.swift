//
//  NavigationModule.swift
//  Messenger
//
//  Created by ANDY on 11/30/19.
//  Copyright © 2019 ANDY. All rights reserved.
//

import Foundation

extension Module {
    enum Navigation {
        typealias View = NavigationController
        typealias ViewModel = NavigationViewModel
    }
}

extension Manager {
    typealias Navigation = NavigationViewModel
}
