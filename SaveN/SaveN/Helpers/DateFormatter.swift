//
//  DateFormatter.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import Foundation

extension DateFormatter {
    static let shared: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
}
