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
    
    
    func test1_AddStudentInfo(){
        let testData = utils.getTestData().studentInfo
        
        studentListScreen.tapOnAddIcon()
        addStudentScreen.insertAndSaveInfo(name:testData.name, mark: String(testData.mark))
        print("Done")
        
        
//        let app = XCUIApplication()
//        let tablesQuery = app.tables
//        let auntorCellsQuery = tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Auntor")/*[[".cells.containing(.staticText, identifier:\"6\")",".cells.containing(.staticText, identifier:\"900\")",".cells.containing(.staticText, identifier:\"studentMarks\")",".cells.containing(.staticText, identifier:\"Auntor\")"],[[[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        auntorCellsQuery/*@START_MENU_TOKEN@*/.staticTexts["Delete"]/*[[".buttons[\"Delete\"].staticTexts[\"Delete\"]",".buttons[\"delete\"].staticTexts[\"Delete\"]",".staticTexts[\"Delete\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        auntorCellsQuery/*@START_MENU_TOKEN@*/.staticTexts["Edit"]/*[[".buttons[\"Edit\"].staticTexts[\"Edit\"]",".buttons[\"edit\"].staticTexts[\"Edit\"]",".staticTexts[\"Edit\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app/*@START_MENU_TOKEN@*/.staticTexts["SAVE"]/*[[".buttons[\"SAVE\"].staticTexts[\"SAVE\"]",".buttons[\"save\"].staticTexts[\"SAVE\"]",".staticTexts[\"SAVE\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        let studentmarksStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["studentMarks"]/*[[".cells",".staticTexts[\"900\"]",".staticTexts[\"studentMarks\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
//        studentmarksStaticText.tap()
//        studentmarksStaticText.tap()
//        studentmarksStaticText.tap()
//
//        let tablesQuery = XCUIApplication().tables
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Auntor"]/*[[".cells.staticTexts[\"Auntor\"]",".staticTexts[\"Auntor\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["j"]/*[[".cells.staticTexts[\"j\"]",".staticTexts[\"j\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["studentMarks"]/*[[".cells",".staticTexts[\"900\"]",".staticTexts[\"studentMarks\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
                        
    }
   
    
    
    
    
    
    
}
