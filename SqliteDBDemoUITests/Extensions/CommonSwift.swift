//
//  CommonSwift.swift
//  SqliteDBDemoUITests
//
//  Created by Auntor Acharja on 15/1/23.
//  Copyright © 2023 Raju Gupta. All rights reserved.
//

import Foundation

extension String{
   static func random(length:Int)->String{
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString = ""

        while randomString.utf8.count < length{
            let randomLetter = letters.randomElement()
            randomString += randomLetter?.description ?? ""
        }
        return randomString
    }
}
extension Int{
   static func randomInt(min: Int, max: Int) -> Int {
       return min + Int(arc4random_uniform(UInt32(max - min + 1)))
   }

}
