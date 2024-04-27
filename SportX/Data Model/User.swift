//
//  User.swift
//  SportX
//
//  Created by student on 27/04/24.
//
import Foundation
import UIKit
struct User {
    var name: String
    var email: String
    var password: String
    var phoneNumber: Int64
    var location:String
    var image:UIImage
    var sportPreference:[SportPreference]
    
    mutating func updateProfile(name: String, email: String, phoneNumber: Int64, image:UIImage) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.image = image
    }
    
    // for sport preference
    mutating func addSportPreference(sportId: String, sportName: String) {
        let newPreference = SportPreference(sportId: sportId, sportName: sportName)
        sportPreference.append(newPreference)
    }
    mutating func removeSportPreference(sportId: String) {
        sportPreference.removeAll { $0.sportId == sportId }
    }
}


