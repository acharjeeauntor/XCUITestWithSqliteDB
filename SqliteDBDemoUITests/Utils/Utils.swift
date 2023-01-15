//
//  Utils.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.

import Foundation

class Utils{
    
    struct TestData: Decodable {
        var studentInfo: Student
    }
    struct Student : Decodable {
        var name: String
        var mark: Int
    }
    
    
    func getTestData() -> TestData {
        // Get the path to your JSON file
        let fileURL = URL(fileURLWithPath: "/Users/auntoracharja/Work/SQA/Automation/XCUITEST/SqliteDBDemo/SqliteDBDemoUITests/TestData/StudentData.json")
        
        // Read the JSON data from the file
        let jsonData = try! Data(contentsOf: fileURL)
        
        // Use JSONDecoder to convert the JSON data to your struct
        let decoder = JSONDecoder()
        let data = try! decoder.decode(TestData.self, from: jsonData)
        return data
    }
}
