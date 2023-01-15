//
//  StudentListScreen.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.

import XCTest
import Foundation
import SqliteDBDemo


class StudentListScreen:BaseTest{
    
    // Identifiers
    private var navigationBarIdentifier = "Students"
    private var addIconIdentifier = "Add"
    private var editBtnIdentifier = "edit"
    private var deleteBtnIdentifier = "delete"
    
    func tapOnAddIcon(){
        app.navigationBars[navigationBarIdentifier].buttons[addIconIdentifier].tap()
    }
    
    func getNameElement(name:String) -> XCUIElement{
        return app.tables.staticTexts[name]
        
    }
    func getMarksElement(marks:String) -> XCUIElement{
        return app.tables.staticTexts[marks]
        
    }
    func getRollNoElement(rollNo:String) -> XCUIElement{
        return app.tables.staticTexts[rollNo]
    }
    
    func tapOnEdit(name:String){
        let nameCellsQuery = app.tables.cells.containing(.staticText, identifier:name)
        nameCellsQuery.buttons[editBtnIdentifier].tap()
    }
    
    func tapOnDelete(name:String){
        let nameCellsQuery = app.tables.cells.containing(.staticText, identifier:name)
        nameCellsQuery.buttons[deleteBtnIdentifier].tap()
    }
    
}
