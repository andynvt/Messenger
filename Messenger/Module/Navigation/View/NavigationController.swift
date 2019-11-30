//
//  NavigationController.swift
//  Messenger
//
//  Created by ANDY on 11/30/19.
//  Copyright © 2019 ANDY. All rights reserved.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    
    let viewModel = NavigationViewModel.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.navigator = self
    }
}
