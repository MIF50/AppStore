//
//  SearchViewControllerTests.swift
//  AppStoreTests
//
//  Created by Mohamed Ibrahim on 10/08/2022.
//

import XCTest

private class SearchViewController: UIViewController {
    
    private var loader: SearchViewControllerTests.LoaderSpy?
    
    convenience init(loader: SearchViewControllerTests.LoaderSpy) {
        self.init()
        self.loader = loader
    }
    
}

class SearchViewControllerTests: XCTestCase {
    
    func test_init_doesNotLoadSearch() {
        let loader = LoaderSpy()
        _ = SearchViewController(loader: loader)
        
        XCTAssertEqual(loader.loadCallCount, 0)
    }
    
    
    //MARK: - Helper
    
    class LoaderSpy {
        private(set) var loadCallCount: Int = 0
    }

}
