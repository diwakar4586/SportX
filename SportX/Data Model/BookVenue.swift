//
//  BookVenue.swift
//  SportX
//
//  Created by student on 28/04/24.
//

import Foundation
struct BookVenue {
    var bookingId: String
    var userId: String
    var venueId: String
    var date: Date
    var timeSlot: TimeSlot
    
    func calculateCost() -> Double {
        //will update later
        return 0.0
    }
}
