//
//  ValidatorUnitTest.swift
//  SaitamaTests
//
//  Created by Roberto Abreu on 11/26/17.
//  Copyright © 2017 homeappzz. All rights reserved.
//

import XCTest
@testable import Saitama

class ValidatorUnitTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidEmails() {
        XCTAssertTrue(Validator.isEmailValid("joserobertoabreu1@hotmail.com"))
        XCTAssertTrue(Validator.isEmailValid("mario_01@gmail.com"))
        XCTAssertTrue(Validator.isEmailValid("jose-34@aor.do"))
    }
    
    func testInvalidEmails() {
        XCTAssertFalse(Validator.isEmailValid(""))
        XCTAssertFalse(Validator.isEmailValid("12"))
        XCTAssertFalse(Validator.isEmailValid("js@_3.com"))
        XCTAssertFalse(Validator.isEmailValid("@ha@.com"))
    }
    
    func testValidPassword() {
        XCTAssertTrue(Validator.isPasswordValid("123456"))
        XCTAssertTrue(Validator.isPasswordValid("MyNewPassword"))
    }
    
    func testInvalidPassword() {
        XCTAssertFalse(Validator.isPasswordValid(""))
        XCTAssertFalse(Validator.isPasswordValid("12345"))
        XCTAssertFalse(Validator.isPasswordValid("abcdf"))
    }
    
    
}
