//
//  RootViewController.swift
//  bornagain
//
//  Created by Nguyen Duong Kim Chi on 10/30/18.
//  Copyright © 2018 kthangtd. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    
    let viewModel = RootViewModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
    }
        
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

}
