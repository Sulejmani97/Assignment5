//
//  Presidents.swift
//  Assignment 5
//
//  Created by Destin Sulejmani on 11/3/22.
//

import Foundation

// decode struct for property list
struct USPresident: Decodable {
    var name: String
    var number: Int
    var startDate: String
    var endDate: String
    var nickName: String
    var politicalParty: String
    var url = ""
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickName = "Nickname"
        case politicalParty = "Political Party"
        case url = "URL"
    }
}
