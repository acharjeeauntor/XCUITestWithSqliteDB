//
//  StudentListScreen.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.

import XCTest

class StudentListScreen:BaseTest{
    
    // Identifiers
    private var navigationBarIdentifier = "Students"
    private var addIconIdentifier = "Add"
    
    
    
    func tapOnAddIcon(){
        app.navigationBars[navigationBarIdentifier].buttons[addIconIdentifier].tap()
    }
    
}
