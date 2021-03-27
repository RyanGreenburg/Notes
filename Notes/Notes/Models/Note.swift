//
//  Note.swift
//  Notes
//
//  Created by RYAN GREENBURG on 3/26/21.
//

import Foundation

class Note {
    let title: String
    let body: String
    let timestamp: Date
    
    init(title: String, body: String, timestamp: Date = Date()) {
        self.title = title
        self.body = body
        self.timestamp = timestamp
    }
}
