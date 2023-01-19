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
 
    lazy var testData = utils.getTestData().studentInfo
    lazy var randomName = String(testData.name+String.random(length: 5))
    lazy var randomMarks = String(testData.mark+Int.randomInt(min: 2, max: 6))

    
    
    
    func test1_AddStudentInfo(){
        // Steps
        studentListScreen.tapOnAddIcon()
        addStudentScreen.insertAndSaveInfo(name:randomName, mark: randomMarks)
      
        // UI - Assertions
        XCTAssertTrue(studentListScreen.getNameElement(name: randomName).exists,"Student Name is not Exist in Student list")
        XCTAssertTrue(studentListScreen.getMarksElement(marks: randomMarks).exists,"Student Marks is not Exist in Student list")
        
        // DB - Assertions
//        let actualName = studentListScreen.getNameElement(name: randomName).label
//        let actualMarks = studentListScreen.getMarksElement(marks: randomMarks).label
//
//
                        
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
