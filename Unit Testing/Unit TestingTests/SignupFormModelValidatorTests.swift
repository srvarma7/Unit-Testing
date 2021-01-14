//
//  SignupFormModelValidator.swift
//  Unit TestingTests
//
//  Created by Sai Raghu Varma Kallepalli on 14/1/21.
//

import XCTest
@testable import Unit_Testing

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUp() {
        sut = SignupFormModelValidator()
    }

    override func tearDown() {
        sut = nil
    }

    // MARK:- Testing First Name
    func testSignupFormModelValidator_WhenEmptyFirstNameProvided_ShouldReturnFalse() {
        // Arrange
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "")
        
        // Assert
        XCTAssertFalse(isFirstNameValid,
                       "When first name is EMPTY, the isFirstNameValid() should return FALSE but returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Sai")
        
        // Assert
        XCTAssertTrue(isFirstNameValid,
                      "When first name is VALID, the isFirstNameValid() should return TRUE but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        XCTAssertFalse(isFirstNameValid,
                       "When first name is too short i.e. less than \(SignupFormConstants.firstNameMinLenght), the isFirstNameValid() should return FALSE but returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Chola Naga Sai Raghu Varma")
        
        // Assert
        XCTAssertFalse(isFirstNameValid,
                       "When first name is too long i.e. greater than \(SignupFormConstants.firstNameMaxLenght), the isFirstNameValid() should return FALSE, but returnes TRUE")
    }
    
    // MARK:- Testing Last Name
    func testSignupFormModelValidator_WhenEmptyLastNameProvided_ShouldReturnFalse() {
        // Arrange
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "")
        
        // Assert
        XCTAssertFalse(isLastNameValid,
                       "When last name is EMPTY, the isLastNameValid() should return FALSE but returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        // Arrange
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "Sai")
        
        // Assert
        XCTAssertTrue(isLastNameValid,
                      "When last name is VALID, the isLastNameValid() should return TRUE but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "S")
        
        // Assert
        XCTAssertFalse(isLastNameValid,
                       "When last name is too short i.e. less than \(SignupFormConstants.lastNameMinLenght), the isLastNameValid() should return FALSE but returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenTooLongLastNameProvided_ShouldReturnFalse() {
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "KallepalliKallepalli")
        
        // Assert
        XCTAssertFalse(isLastNameValid,
                       "When last name is too long i.e. greater than \(SignupFormConstants.lastNameMaxLenght) it should return FALSE, but returnes TRUE")
    }
    
    // MARK:- Testing Password
    func testSignupFormModelValidator_WhenEmptyPasswordProvided_ShouldReturnFalse() {
        // Arrange
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "")
        
        // Assert
        XCTAssertFalse(isPasswordValid,
                       "When password is EMPTY, the isPasswordValid() should return FALSE but returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        // Arrange
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "Asd@123$dsa")
        
        // Assert
        XCTAssertTrue(isPasswordValid,
                      "When password is VALID i.e. a min of \(SignupFormConstants.passwordMinLenght) length, the isPasswordValid() should return TRUE but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortPasswordProvided_ShouldReturnFalse() {
        // Act
        let isPasswordValid = sut.isPasswordValid(password: "S")
        
        // Assert
        XCTAssertFalse(isPasswordValid,
                       "When password is too short i.e. less than \(SignupFormConstants.passwordMinLenght), the isPasswordValid() should return FALSE but returned TRUE")
    }
    
    // MARK:- Testing Repeat Password
    func testSignupFormModelValidator_WhenSamePasswordProvided_ShouldReturnTrue() {
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "Asd@123$dsa",
                                                    repeatPassword: "Asd@123$dsa")
        
        // Assert
        XCTAssertTrue(doPasswordsMatch,
                      "When two passwords do MATCH, the doPasswordsMatch() should return TRUE but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenNotSamePasswordProvided_ShouldReturnFalse() {
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "sd@123$dsa",
                                                    repeatPassword: "Asd@123$dsa")
        
        // Assert
        XCTAssertFalse(doPasswordsMatch,
                      "When two passwords do NOT MATCH, the doPasswordsMatch() should return FALSE but returned TRUE")
    }
    
}
