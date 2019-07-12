//
//  MockUIApplication.swift
//  athm-checkoutTests
//
//  Created by Leonardo Maldonado on 2/22/19.
//  Copyright © 2019 Evertec, Inc. All rights reserved.
//

import Foundation

@testable import athm_checkout

class MockUIApplication: URLOpenerProtocol {
    
    var canOpen: Bool
    var count: Int = 0
    
    init(canOpen: Bool) {
        self.canOpen = canOpen
    }
    
    func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler completion: ((Bool) -> Void)?) {
        
        count += 1
        
        if canOpen {
            completion?(true)
        } else {
            completion?(false)
        }
    }
}

