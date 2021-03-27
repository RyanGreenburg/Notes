//
//  Note.swift
//  Notes
//
//  Created by RYAN GREENBURG on 3/26/21.
//

import Foundation

class Note {
    var title: String
    var body: String
    let timestamp: Date
    
    init(title: String, body: String, timestamp: Date = Date()) {
        self.title = title
        self.body = body
        self.timestamp = timestamp
    }
}

extension Note: Equatable {
    static func == (lhs: Note, rhs: Note) -> Bool {
        lhs.title == rhs.title && lhs.body == rhs.body && lhs.timestamp == rhs.timestamp
    }
}
