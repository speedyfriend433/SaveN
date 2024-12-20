//
//  NotificationModel.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import Foundation

struct ArchivedNotification: Identifiable, Codable, Hashable {
    let id: String
    let title: String
    let body: String
    let timestamp: Date
    let appIdentifier: String
    
    var formattedDate: String {
        DateFormatter.shared.string(from: timestamp)
    }
}
