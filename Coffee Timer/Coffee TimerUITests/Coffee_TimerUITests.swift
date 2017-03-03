//
//  Coffee_TimerUITests.swift
//  Coffee TimerUITests
//
//  Created by Rad Azzouz on 2017-03-03.
//  Copyright © 2017 Ash Furrow. All rights reserved.
//

import XCTest

class Coffee_TimerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let application = XCUIApplication()
		application.launchArguments.append("BUDDYBUILD_UI_TESTS_VIDEO_RECORDING")
		application.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
		
		XCUIDevice().press(.home)
		sleep(1) // Leave this to 1 second for now. To be sure it works on VMs

        super.tearDown()
    }
    
    func testSelectColumbianStartWait5SecondsThenStop() {
		let app = XCUIApplication()
		app.tables.staticTexts["Colombian"].tap()
		app.buttons["Start"].tap()
		sleep(5)
		let staticText = app.staticTexts["4:00"]
		print("static text: \(staticText)")
		//XCTAssert(staticText == "3:55")
		app.buttons["Stop"].tap()
    }
    
}
