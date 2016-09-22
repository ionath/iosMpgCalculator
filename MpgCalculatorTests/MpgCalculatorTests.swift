//
//  MpgCalculatorTests.swift
//  MpgCalculatorTests
//
//  Created by John Franklin on 22/09/2016.
//  Copyright © 2016 John Franklin. All rights reserved.
//

import XCTest
@testable import MpgCalculator

class MpgCalculatorTests: XCTestCase {
    
    // MARK: FuelPoint tests
    // Test to make sure initializer returns when bad inputs are provided
    func testFuelPointInitialization() {
        let today = Date.init(timeIntervalSinceNow: 0)
        
        // Sucess case
        let potentialFuelPoint = FuelPoint(distance:100.0, fuelUsed:20.0, date:today)
        XCTAssertNotNil(potentialFuelPoint)
        
        // Fail cases
        let zeroDistance = FuelPoint(distance: 0.0, fuelUsed: 15.0, date: today)
        XCTAssertNil(zeroDistance, "Zero distance is invalid")
        
        let zeroFuel = FuelPoint(distance: 14.0, fuelUsed: 0.0, date: today)
        XCTAssertNil(zeroFuel, "Zero fuel is invalid")
        
        let negativeDistance = FuelPoint(distance: -1.0, fuelUsed: 15.0, date: today)
        XCTAssertNil(negativeDistance, "Negative distance is invalid")
        
        let negativeFuel = FuelPoint(distance: 10.0, fuelUsed: -1.0, date: today)
        XCTAssertNil(negativeFuel, "Negative fuel is invalid")

    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
