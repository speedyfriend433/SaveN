//
//  NotificationService.swift
//  NotificationServiceExtension
//
//  Created by speedy on 2024/12/20.
//

import UserNotifications

class NotificationService: UNNotificationServiceExtension {
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        let content = request.content.mutableCopy() as! UNMutableNotificationContent
        let notification = ArchivedNotification(
            id: request.identifier,
            title: content.title,
            body: content.body,
            timestamp: Date(),
            appIdentifier: Bundle.main.bundleIdentifier ?? "",
            category: content.categoryIdentifier
        )
        
        if let sharedDefaults = UserDefaults(suiteName: "group.com.yourapp.notificationarchiver") {
            var notifications = [ArchivedNotification]()
            if let data = sharedDefaults.data(forKey: "notifications"),
               let decoded = try? JSONDecoder().decode([ArchivedNotification].self, from: data) {
                notifications = decoded
            }
            notifications.append(notification)
            if let encoded = try? JSONEncoder().encode(notifications) {
                sharedDefaults.set(encoded, forKey: "notifications")
            }
        }
        
        contentHandler(content)
    }
}   
