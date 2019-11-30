//
//  RootViewModel.swift
//  bornagain
//
//  Created by Ngo Thang Loi on 10/30/18.
//  Copyright © 2018 kthangtd. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class RootViewModel {
    
    static let shared = RootViewModel()
    weak var view: RootViewController!
    
    func present(_ vc: UIViewController, animated: Bool = true, completion: (()->())? = nil) {
        var presented: UIViewController = view
        while let vc = presented.presentedViewController {
            presented = vc
        }
        presented.present(vc, animated: true, completion: completion)
    }
    
    
    
}
