//
//  AddStundentScreen.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.
//  Copyright © 2023 Raju Gupta. All rights reserved.
//

import XCTest

class AddStudentScreen:BaseTest{
    // Identifier
    private var nameInputFieldIdentifier = "name"
    private var marksInputFieldIdentifier = "marks"
    private var saveBtnIdentifier = "save"
    
    
    func insertAndSaveInfo(name:String,mark:String){
        let nameInputField = app.textFields[nameInputFieldIdentifier]
        let marksInputField = app.textFields[marksInputFieldIdentifier]
        
        nameInputField.tap()
        nameInputField.typeText(name)
        
        marksInputField.tap()
        marksInputField.typeText(mark)
        
        app.buttons[saveBtnIdentifier].tap()
    }
    
}
