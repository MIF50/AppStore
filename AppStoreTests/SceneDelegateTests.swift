//
//  SceneDelegateTests.swift
//  AppStoreTests
//
//  Created by Mohamed Ibrahim on 10/08/2022.
//

import XCTest
@testable import AppStore

final class SceneDelegateTests: XCTestCase {
    
    func test_configureWindow_setsWindowAsKeyAndVisible() {
        let window = UIWindowSpy()
        let sut = SceneDelegate()
        sut.window = window
        
        sut.configureWindow()
        
        XCTAssertEqual(window.makeKeyAndVisibleCallCount, 1,"Expected to make window key and visible")
    }
    
    func test_configureWindow_configuresRootViewController() {
        let window = UIWindowSpy()
        let sut = SceneDelegate()
        sut.window = window
        
        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        XCTAssertNotNil(root, "Expected window to have a `rootViewController`")

        let tabBar = root as? BaseTabBarController
        XCTAssertNotNil(tabBar, "Expected rootViewController to be a `BaseTabBarController`")
        XCTAssertEqual(tabBar?.viewControllers?.count, 3,"Expected three tabs in the root 'BaseTabBarController'")
    }
    
    //MARK: - Helper
    
    private class UIWindowSpy: UIWindow {
        var makeKeyAndVisibleCallCount = 0
        
        override func makeKeyAndVisible() {
            makeKeyAndVisibleCallCount += 1
        }
    }
}
