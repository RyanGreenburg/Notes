//
//  Date+Extension.swift
//  Notes
//
//  Created by RYAN GREENBURG on 4/28/21.
//

import Foundation

extension Date {
    func stringValue(style: DateFormatter.Style = .medium) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = style
        return formatter.string(from: self)
    }
}
