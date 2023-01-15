//
//  CRUDOperationTest.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.
//  Copyright © 2023 Raju Gupta. All rights reserved.
//

import Foundation
import XCTest


class CRUDOperationTest:BaseTest{

    
    let studentListScreen = StudentListScreen()
    let addStudentScreen = AddStudentScreen()
    let utils = Utils()
//    var randomName:String = ""
//    var randomMarks:String = ""
//
//    var testData = utils.getTestData().studentInfo
//    var randomName = String(testData.name+String.random(length: 5))
//    var randomMarks = String(testData.mark+Int.randomInt(min: 2, max: 6))
//
//
    
    func test1_AddStudentInfo(){
        // Test Data
        let testData = utils.getTestData().studentInfo
        randomName = String(testData.name+String.random(length: 5))
        randomMarks = String(testData.mark+Int.randomInt(min: 2, max: 6))
        
        // Steps
        studentListScreen.tapOnAddIcon()
        addStudentScreen.insertAndSaveInfo(name:randomName, mark: randomMarks)
      
        // UI - Assertions
        XCTAssertTrue(studentListScreen.getNameElement(name: randomName).exists)
        XCTAssertTrue(studentListScreen.getMarksElement(marks: randomMarks).exists)
        
        // DB - Assertions
        let actualName = studentListScreen.getNameElement(name: randomName).label
        let actualMarks = studentListScreen.getMarksElement(marks: randomMarks).label
        
        
                        
    }
   
    
//    func test1_EditStudentInfo(){
//        // Test Data
//        let testData = utils.getTestData().studentInfo
//        let name = String(testData.name)
//        let mark = String(testData.mark)
//
//        // Steps
//        studentListScreen.tapOnEdit(name:randomName)
//        addStudentScreen.insertAndSaveInfo(name:randomName, mark: randomMarks)
//
//        // UI - Assertions
//        XCTAssertTrue(studentListScreen.getNameElement(name: randomName).exists)
//        XCTAssertTrue(studentListScreen.getMarksElement(marks: randomMarks).exists)
//
//        // DB - Assertions
//        let actualName = studentListScreen.getNameElement(name: randomName).label
//        let actualMarks = studentListScreen.getMarksElement(marks: randomMarks).label
//
//
//
//    }
    
    
    
    
}
