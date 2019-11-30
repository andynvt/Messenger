//
//  NavigationViewModel.swift
//  Messenger
//
//  Created by ANDY on 11/30/19.
//  Copyright © 2019 ANDY. All rights reserved.
//

import Foundation
import UIKit

class NavigationViewModel: NSObject {
    
    static let shared = NavigationViewModel()
    weak var navigator: UINavigationController!
//    let disposer = DisposeBag()
    
    private override init() {
        super.init()
    }
    
    func push(_ vc: UIViewController, animated: Bool = true) {
        navigator.pushViewController(vc, animated: animated)
    }
    
    func pop(seek vc: UIViewController) {
        navigator.viewControllers.removeAll { ivc -> Bool in
            ivc == vc
        }
    }
    
    func pop(_ animated: Bool = true) {
        navigator.popViewController(animated: animated)
    }
    
    func pop(to vc: UIViewController, _ animated: Bool = true) {
        navigator.popToViewController(vc, animated: animated)
    }
    
    func pop(to vcClass: AnyClass, _ animated: Bool = true) {
        if let vc = viewControllers().first(where: { $0.classForCoder == vcClass }) {
            pop(to: vc, animated)
        }
    }
    
    func currentViewController() -> UIViewController? {
        return navigator.visibleViewController
    }
    
    func currentPresentViewController() -> UIViewController {
        var presented: UIViewController = Manager.Root.shared.view!
        while let presenter = presented.presentedViewController {
            presented = presenter
        }
        return presented
    }
    
    func viewControllers() -> [UIViewController] {
        return navigator.viewControllers
    }
    
    func present(_ vc: UIViewController, animated: Bool = true, completion: (()->())? = nil) {
        Manager.Root.shared.present(vc, animated: animated, completion: completion)
    }
}
