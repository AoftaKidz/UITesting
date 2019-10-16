//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by Narongsak Phungdee on 2/10/2562 BE.
//  Copyright © 2562 Narongsak Phungdee. All rights reserved.
//

import XCTest

class UITestingUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignInSuccess() {
        
        let validUser = "kidrock"
        let validPass = "1234"
        
        let app = XCUIApplication()
        let tfUsername = app.textFields["email / username"]
        XCTAssertTrue(tfUsername.exists)
        tfUsername.tap()
        tfUsername.typeText(validUser)
        
        let tfPassword = app.textFields["password"]
        XCTAssertTrue(tfPassword.exists)
        tfPassword.tap()
        tfPassword.typeText(validPass)
        
//        app.buttons["Register"].tap()
        let signinBtn = app.buttons["Sign in"]
        XCTAssertTrue(signinBtn.exists)
        signinBtn.tap()
        
        XCTAssertTrue(app.alerts["Sign in"].staticTexts["Sign in success."].exists)
    }

    func testSignInFailed() {
        
        let validUser = "kidrock"
        let invalidPass = "12345"
        
        let app = XCUIApplication()
        let tfUsername = app.textFields["email / username"]
        XCTAssertTrue(tfUsername.exists)
        tfUsername.tap()
        tfUsername.typeText(validUser)
        
        let tfPassword = app.textFields["password"]
        XCTAssertTrue(tfPassword.exists)
        tfPassword.tap()
        tfPassword.typeText(invalidPass)
        
        //        app.buttons["Register"].tap()
        let signinBtn = app.buttons["Sign in"]
        XCTAssertTrue(signinBtn.exists)
        signinBtn.tap()
        
        XCTAssertTrue(app.alerts["Sign in"].staticTexts["Username or password is invalid."].exists)
    }
    
    func testSignInValidateUsername() {
        
        let validUser = ""
        
        let app = XCUIApplication()
        let tfUsername = app.textFields["email / username"]
        XCTAssertTrue(tfUsername.exists)
        tfUsername.tap()
        tfUsername.typeText(validUser)
      
        //        app.buttons["Register"].tap()
        let signinBtn = app.buttons["Sign in"]
        XCTAssertTrue(signinBtn.exists)
        signinBtn.tap()
        
        XCTAssertTrue(app.alerts["Sign in"].staticTexts["Please input your username."].exists)
    }
}
