//
//  RootModule.swift
//  bornagain
//
//  Created by Ngo Thang Loi on 10/30/18.
//  Copyright © 2018 kthangtd. All rights reserved.
//

import Foundation

extension Module {
    enum Root {
        typealias View = RootViewController
        typealias ViewModel = RootViewModel
    }
}

extension Manager {
    typealias Root = RootViewModel
}
