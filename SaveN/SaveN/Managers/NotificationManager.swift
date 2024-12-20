//
//  NotificationManage.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import SwiftUI
import UserNotifications

class NotificationManager: ObservableObject {
    static let shared = NotificationManager()
    
    @Published private(set) var notifications: [ArchivedNotification] = []
    @Published private(set) var selectedNotification: ArchivedNotification?
    
    private let defaults = UserDefaults.standard
    private let notificationsKey = "archivedNotifications"
    
    init() {
        loadNotifications()
    }
    
    func archiveNotification(_ notification: UNNotification) {
        let archived = ArchivedNotification(
            id: notification.request.identifier,
            title: notification.request.content.title,
            body: notification.request.content.body,
            timestamp: notification.date,
            appIdentifier: Bundle.main.bundleIdentifier ?? ""
        )
        
        DispatchQueue.main.async {
            self.notifications.append(archived)
            self.saveNotifications()
        }
    }
    
    func removeNotifications(at offsets: IndexSet) {
        notifications.remove(atOffsets: offsets)
        saveNotifications()
    }
    
    private func saveNotifications() {
        if let encoded = try? JSONEncoder().encode(notifications) {
            defaults.set(encoded, forKey: notificationsKey)
        }
    }
    
    private func loadNotifications() {
        if let data = defaults.data(forKey: notificationsKey),
           let decoded = try? JSONDecoder().decode([ArchivedNotification].self, from: data) {
            notifications = decoded
        }
    }
}
