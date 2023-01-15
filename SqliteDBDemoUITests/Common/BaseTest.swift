//
//  BaseTest.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.

import XCTest

class BaseTest:XCTestCase{
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }
}
