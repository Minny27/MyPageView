//
//  Coordinator.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import Foundation
import UIKit

class Coordinator {
    
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rootViewController = UINavigationController(
            rootViewController: MyPageViewController()
        )
        
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
}
